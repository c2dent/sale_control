import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/data_sync_services/data_sync_service.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/services/user_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/daos/contract_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/profile/domain/profile_interactor.dart';
import 'package:hasap_admin/feature/profile/presentation/bloc/profile_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileBloc extends SrBloc<ProfileEvent, ProfileState, ProfileSR> {
  final Connectivity connectivity = Connectivity();
  final ProfileInteractor interactor;
  final SettingsService settingsService;
  final KeyValueStore keyValueStore;
  final DataSyncService dataSyncService;
  final UserApiService userApiService;
  final ContractDao contractDao;

  ProfileBloc(this.interactor, this.keyValueStore, this.dataSyncService, this.contractDao, this.userApiService)
      : settingsService = GetIt.instance.get<SettingsService>(),
        super(const ProfileState.empty()) {
    on<ProfileEventInit>(_init);
    on<ProfileEventLogout>(_logout);
    on<ProfileEventRecalculateBalance>(_recalculateBalance);
    on<ProfileEventSynchronize>(_synchronize);
  }

  FutureOr<void> _init(ProfileEventInit event, Emitter<ProfileState> emit) async {
    String? syncDate = await keyValueStore.read(StoreKeys.prefsLastCommonUpdateDateKey);
    String syncStatus = '';

    if (syncDate != null) syncStatus = formattingDateTime(DateTime.parse(syncDate).toLocal());
    User? user = await settingsService.getCurrentUser();
    final result = await interactor.get(user!.office.id);

    if (result.isLeft) {
      emit(state.data.copyWith(isLoading: false));
      return addSr(const ProfileSR.errorNotify(text: "Yalnyshlyk yuze chykdy"));
    }

    emit(ProfileState.data(isLoading: false, user: user, recalculateBalanceLoading: false, syncStatus: syncStatus, syncLoading: false, office: result.right));
  }

  FutureOr<void> _recalculateBalance(ProfileEventRecalculateBalance event, Emitter<ProfileState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.recalculateBalance();
    emit(state.data.copyWith(isLoading: false));
    if (result.isLeft) return addSr(const ProfileSR.errorNotify(text: "Yalnyshlyk yuze chykdy"));
    addSr(const ProfileSR.successNotify(text: "Баланс успешно пересчитан"));
    final newResult = await interactor.get(state.data.user!.office.id);
    if (newResult.isLeft) return;
    emit(state.data.copyWith(office: newResult.right));
  }

  Future<void> _logout(ProfileEventLogout event, Emitter<ProfileState> emit) async {
    addSr(const ProfileSR.logout());
  }

  FutureOr<void> _synchronize(ProfileEventSynchronize event, Emitter<ProfileState> emit) async {
    emit(state.data.copyWith(syncLoading: true));

    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.wifi && connectivityResult != ConnectivityResult.mobile) {
      emit(state.data.copyWith(syncStatus: 'Internet baglansygy yok', syncLoading: false));
      return;
    }

    await userApiService.currentUser();
    await dataSyncService.incomingSync();
    await dataSyncService.outgoingSync();
    String dateNow = dateTimeFormatter.format(DateTime.now().toUtc());
    await keyValueStore.write(StoreKeys.prefsLastCommonUpdateDateKey, dateNow);
    emit(state.data.copyWith(syncStatus: formattingDateTime(DateTime.parse(dateNow).toLocal()), syncLoading: false));
  }
}
