import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'contract_detail_bloc_models.freezed.dart';

@freezed
class ContractDetailEvent with _$ContractDetailEvent {
  const factory ContractDetailEvent.init({required ContractTableData contract}) = ContractDetailEventInit;
  const factory ContractDetailEvent.update() = ContractDetailEventUpdate;
  const factory ContractDetailEvent.error({required String error}) = ContractDetailEventError;
}

@freezed
class ContractDetailSR with _$ContractDetailSR {
  const factory ContractDetailSR.successNotify({required String text}) = _SuccessNotify;
  const factory ContractDetailSR.errorNotify({required String text}) = _ErrorNotify;
}

@freezed
class ContractDetailState with _$ContractDetailState {
  ContractDetailStateData get data => this as ContractDetailStateData;

  const ContractDetailState._();

  const factory ContractDetailState.empty() = ContractDetailEmpty;

  const factory ContractDetailState.data({
    required bool isLoading,
    required ContractDataDetail contract,
    required ContractTableData contractTableData,
  }) = ContractDetailStateData;
}
