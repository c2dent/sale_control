import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract/domain/contract_interactor.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/filters/search_by_keyboard.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/filters/sort_select.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractBloc extends SrBloc<ContractEvent, ContractState, ContractSR> {
  final ContractInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final KeyValueStore _store;

  ContractBloc(
    this.interactor,
    this._notifyErrorSnackbar,
    this._store,
  ) : super(const ContractState.empty()) {
    on<ContractEventInit>(_init);
    on<ContractEventFilter>(_filter);
    on<ContractEventResetFilter>(_resetFilter);
  }

  FutureOr<void> _init(ContractEventInit event, Emitter<ContractState> emit) async {
    await _store.init();
    String? userJson = await _store.read<String>(StoreKeys.prefsCurrentUserData);
    if (userJson == null) {
      addSr(const ContractSR.logout());
      return;
    }

    Map<String, CustomFilterWidget> filters = {
      'search': SearchByKeyboard(onChange: () => add(const ContractEvent.filter())),
      'sort': SelectSort(onChange: () => add(const ContractEvent.filter())),
    };

    final result = await interactor.list(filters: filters);

    if (result.isLeft) {
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(ContractState.data(
        isLoading: false,
        filters: filters,
        contracts: result.right,
      ));
    }
  }

  FutureOr<void> _filter(ContractEventFilter event, Emitter<ContractState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.list(filters: state.data.filters);
    if (result.isLeft) {
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, contracts: result.right));
  }

  FutureOr<void> _resetFilter(ContractEventResetFilter event, Emitter<ContractState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    // for (var item in state.data.filters) {
    //   item.clear();
    // }

    final result = await interactor.list(filters: state.data.filters);
    if (result.isLeft) {
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, contracts: result.right));
  }
}
