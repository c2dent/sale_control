import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';

part 'contract_return_bloc_models.freezed.dart';

@freezed
class ContractReturnEvent with _$ContractReturnEvent {
  const factory ContractReturnEvent.init() = ContractReturnEventInit;
  const factory ContractReturnEvent.filter() = ContractReturnEventFilter;
  const factory ContractReturnEvent.resetFilter() = ContractReturnEventResetFilter;
  const factory ContractReturnEvent.delete({required ContractReturnData contractReturn}) = ContractReturnEventDelete;
}

@freezed
class ContractReturnSR with _$ContractReturnSR {
  const factory ContractReturnSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ContractReturnSR.successNotify({required String text}) = _SuccessNotify;

  const factory ContractReturnSR.delete({required ContractReturnData contractReturn}) = _ContractReturnDeleted;
}

@freezed
class ContractReturnState with _$ContractReturnState {
  ContractReturnStateData get data => this as ContractReturnStateData;

  const ContractReturnState._();

  const factory ContractReturnState.empty() = ContractReturnStateEmpty;

  const factory ContractReturnState.data({
    required bool isLoading,
    required List<Filter> filters,
    required List<ContractReturnData> contractReturns,
  }) = ContractReturnStateData;
}
