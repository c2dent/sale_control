import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/contract/domain/contract_interactor.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/filters/task_master.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractBloc extends SrBloc<ContractEvent, ContractState, ContractSR> {
  final ContractInteractor contractInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  ContractBloc(
      this.contractInteractor,
      this._notifyErrorSnackbar,
      ) : super(const ContractState.empty()) {
    on<ContractEventInit>(_init);
    on<ContractEventFilter>(_filter);
    on<ContractEventResetFilter>(_resetFilter);
  }

  FutureOr<void> _init(ContractEventInit event, Emitter<ContractState> emit) async {
    List<Filter> filters = [
      Filter<Employee>(
        parameterName: 'task_master',
        widget: TaskMasterDropdown(bloc: this, onChange: (Employee? value) {}, values: const []),
        parameterValue: (dynamic employee) => employee.id.toString(),
      ),
    ];

    final result = await contractInteractor.list(filters: filters);

    if (result.isLeft) {
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      emit(
        ContractState.data(
            isLoading: false,
            filters: filters,
            contracts: result.right,
        )
      );
    }

  }

  FutureOr<void> _resetFilter(ContractEventResetFilter event, Emitter<ContractState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    for (var item in state.data.filters) {
      item.clear();
    }

    final result = await contractInteractor.list(filters: state.data.filters);

    if (result.isLeft) {
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, contracts: result.right));
  }

  FutureOr<void> _filter(ContractEventFilter event, Emitter<ContractState> emit) async {
    emit(state.data.copyWith(isLoading: true));

    final result = await contractInteractor.list(filters: state.data.filters);

    if (result.isLeft) {
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, contracts: result.right));
  }
}