import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract_return/domain/contract_return_interactor.dart';
import 'package:hasap_admin/feature/contract_return/presentation/list/bloc/contract_return_bloc_models.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractReturnBloc extends SrBloc<ContractReturnEvent, ContractReturnState, ContractReturnSR> {
  final ContractorReturnInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final SettingsService settingsService;

  ContractReturnBloc(
    this.interactor,
    this._notifyErrorSnackbar,
  )   : settingsService = GetIt.instance.get<SettingsService>(),
        super(const ContractReturnState.empty()) {
    on<ContractReturnEventInit>(_init);
    on<ContractReturnEventFilter>(_filter);
    on<ContractReturnEventResetFilter>(_resetFilter);
    on<ContractReturnEventDelete>(_delete);
  }

  FutureOr<void> _init(ContractReturnEventInit event, Emitter<ContractReturnState> emit) async {
    Map<String, List<CustomFilterWidget>> filters = {};

    final result = await interactor.list();
    if (result.isLeft) {
      addSr(ContractReturnSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(ContractReturnState.data(
        isLoading: false,
        filters: filters,
        contractReturns: result.right,
      ));
    }
  }

  FutureOr<void> _filter(ContractReturnEventFilter event, Emitter<ContractReturnState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.list();
    if (result.isLeft) {
      addSr(ContractReturnSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, contractReturns: result.right));
  }

  FutureOr<void> _resetFilter(ContractReturnEventResetFilter event, Emitter<ContractReturnState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    // for (var item in state.data.filters) {
    //   item.clear();
    // }

    final result = await interactor.list();
    if (result.isLeft) {
      addSr(ContractReturnSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, contractReturns: result.right));
  }

  FutureOr<void> _delete(ContractReturnEventDelete event, Emitter<ContractReturnState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.delete(event.contractReturn.contractReturn.id);
    if (result.isLeft) {
      emit(state.data.copyWith(isLoading: false));
      addSr(ContractReturnSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      addSr(const ContractReturnSR.successNotify(text: "Mushderi pozuldy"));
      addSr(ContractReturnSR.delete(contractReturn: event.contractReturn));
      emit(state.data.copyWith(isLoading: false));
    }
  }
}
