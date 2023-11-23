import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
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
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ContractSR.successNotify({required String text}) = _SuccessNotify;

  const factory ContractSR.delete({required Contract contract}) = _ContractDeleted;
}

@freezed
class ContractState with _$ContractState {
  ContractStateData get data => this as ContractStateData;

  const ContractState._();

  const factory ContractState.empty() = ContractStateEmpty;

  const factory ContractState.data({
    required bool isLoading,
    required Map<String, CustomFilterWidget> filters,
    required List<ContractData> contracts,
  }) = ContractStateData;
}

enum ContractSortType {
  createDate(name: "Goshulan wagt", value: "createDate"),
  paymentDate(name: "Toleg wagt", value: "paymentDate");

  final String name;
  final String value;

  const ContractSortType({
    required this.name,
    required this.value
});
}