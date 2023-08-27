import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/feature/profile/domain/profile_interactor.dart';
import 'package:hasap_admin/feature/profile/presentation/bloc/profile_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileBloc extends SrBloc<ProfileEvent, ProfileState, ProfileSR> {
  final ProfileInteractor interactor;
  final SettingsService settingsService;

  ProfileBloc(this.interactor)
      : settingsService = GetIt.instance.get<SettingsService>(),
        super(const ProfileState.empty()) {
    on<ProfileEventInit>(_init);
    on<ProfileEventLogout>(_logout);
    on<ProfileEventRecalculateBalance>(_recalculateBalance);
  }

  FutureOr<void> _init(ProfileEventInit event, Emitter<ProfileState> emit) async {
    User? user = await settingsService.getCurrentUser();

    emit(ProfileState.data(
      isLoading: false, user: user, recalculateBalanceLoading: false,
    ));
  }

  FutureOr<void> _logout(ProfileEventLogout event, Emitter<ProfileState> emit) async {
    interactor.unAuthorize(event.context);
    emit(const ProfileState.empty());
  }

  FutureOr<void> _recalculateBalance(ProfileEventRecalculateBalance event, Emitter<ProfileState> emit) async {
    emit(state.data.copyWith(recalculateBalanceLoading: true));
    final result = await interactor.recalculateBalance(state.data.user!.office);

    if (result.isLeft) {
      addSr(ProfileSR.showDioError(error: result.left, notifyErrorSnackbar: NotifyErrorSnackbar()));
      return;
    }

    emit(state.data.copyWith(user: state.data.user?.copyWith(office: result.right), recalculateBalanceLoading: false));
    addSr(const ProfileSR.successNotify(text: "Баланс успешно пересчитан"));
  }
}