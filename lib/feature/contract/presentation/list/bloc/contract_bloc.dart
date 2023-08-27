import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/feature/contract/domain/contract_interactor.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/filters/employee.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/filters/office.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/filters/region.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractBloc extends SrBloc<ContractEvent, ContractState, ContractSR> {
  final ContractInteractor interactor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;
  final SettingsService settingsService;

  ContractBloc(
      this.interactor,
      this._notifyErrorSnackbar,
      ) : settingsService = GetIt.instance.get<SettingsService>(), super(const ContractState.empty()) {
    on<ContractEventInit>(_init);
    on<ContractEventFilter>(_filter);
    on<ContractEventResetFilter>(_resetFilter);
    on<ContractEventDelete>(_delete);
  }

  FutureOr<void> _init(ContractEventInit event, Emitter<ContractState> emit) async {
    User? user = await settingsService.getCurrentUser();

    List<Filter> filters = [
      Filter<Region>(
          parameterName: 'region',
          widget: RegionDropdownFilter(
            bloc: this,
            onChange: (Region? value) {},
            values: [null, null, null, null, null],
          ),
          parameterValue: (dynamic region) => region.id.toString()
      ),
      Filter<Employee>(
        parameterName: 'employee',
        widget: EmployeeDropdownFilter(bloc: this, onChange: (Employee? value) {}, values: const []),
        parameterValue: (dynamic employee) => employee.id.toString(),
      ),
    ];

    if (user?.permission == "ADMIN") {
      filters.add(
        Filter<Office>(
          parameterName: 'office',
          widget: OfficeFilterDropdown(bloc: this, onChange: (Office? value) {}, values: const []),
          parameterValue: (dynamic office) => office.id.toString(),
        ),
      );
    }

    final result = await interactor.list(filters: filters);

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
    for (var item in state.data.filters) {
      item.clear();
    }

    final result = await interactor.list(filters: state.data.filters);
    if (result.isLeft) {
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    }

    emit(state.data.copyWith(isLoading: false, contracts: result.right));
  }

  FutureOr<void> _delete(ContractEventDelete event, Emitter<ContractState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await interactor.delete(event.contract.id);
    if (result.isLeft) {
      emit(state.data.copyWith(isLoading: false));
      addSr(ContractSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      return;
    } else {
      addSr(const ContractSR.successNotify(text: "Shertnama pozuldy"));
      addSr(ContractSR.delete(contract: event.contract));
      emit(state.data.copyWith(isLoading: false));
    }
  }
}