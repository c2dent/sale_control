import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';

part 'contract_return_create_bloc_models.freezed.dart';

@freezed
class ContractReturnCreateEvent with _$ContractReturnCreateEvent {
  const factory ContractReturnCreateEvent.init({ContractReturnData? contractReturn}) = ContractReturnCreateEventInit;

  const factory ContractReturnCreateEvent.create() = ContractReturnCreateEventCreate;

  const factory ContractReturnCreateEvent.update() = ContractReturnCreateEventUpdate;

  const factory ContractReturnCreateEvent.selectContract({required ContractData? contract}) = ContractReturntCreateEventSelectContract;

  const factory ContractReturnCreateEvent.selectDate({required DateTime date}) = ContractReturnCreateEventSelectDate;
}

@freezed
class ContractReturnCreateSR with _$ContractReturnCreateSR {
  const factory ContractReturnCreateSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ContractReturnCreateSR.successNotify({required String text}) = _SuccessNotify;
  const factory ContractReturnCreateSR.errorNotify({required String text}) = _ErrorNotify;

  const factory ContractReturnCreateSR.created() = _ClientCreated;
}

@freezed
class ContractReturnCreateState with _$ContractReturnCreateState {
  ContractReturnCreateStateData get data => this as ContractReturnCreateStateData;

  const ContractReturnCreateState._();

  const factory ContractReturnCreateState.empty() = ContractReturnCreateStateEmpty;

  const factory ContractReturnCreateState.data({
    required bool isLoading,
    required GlobalKey<FormState> formKey,
    required TextEditingController reason,
    required DateTime date,
    required ContractData? contract,
    required List<ContractData> contracts,
    required ContractReturnData? contractReturn,
  }) = ContractReturnCreateStateData;
}