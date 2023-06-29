import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'contract_bloc_models.freezed.dart';

@freezed
class ContractEvent with _$ContractEvent {
  const factory ContractEvent.init() = ContractEventInit;

  const factory ContractEvent.filter() = ContractEventFilter;

  const factory ContractEvent.resetFilter() = ContractEventResetFilter;
}

@freezed
class ContractSR with _$ContractSR{
  const factory ContractSR.showDioError({
    required CommonResponseError<DefaultApiError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;
}

@freezed
class ContractState with _$ContractState {
  ContractStateData get data => this as ContractStateData;

  const ContractState._();

  const factory ContractState.empty() = ContractStateEmpty;

  const factory ContractState.data({
    required bool isLoading,
    required List<Filter> filters,
    required List<Contract> contracts,
  }) = ContractStateData;
}