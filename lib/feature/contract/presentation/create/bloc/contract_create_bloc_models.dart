import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'contract_create_bloc_models.freezed.dart';

@freezed
class ContractCreateEvent with _$ContractCreateEvent {
  const factory ContractCreateEvent.init({ContractData? contract}) = ContractCreateEventInit;

  const factory ContractCreateEvent.create() = ContractCreateEventCreate;

  const factory ContractCreateEvent.update() = ContractCreateEventUpdate;

  const factory ContractCreateEvent.selectRegion({
    required Region? region,
    required List<Region?> regions,
  }) = ContractCreateEventSelectRegion;

  const factory ContractCreateEvent.selectAdvertiser({required Employee? employee}) = ContractCreateEventSelectAdvertiser;

  const factory ContractCreateEvent.setupDate({required DateTime date}) = ContractCreateEventSetupDate;
}

@freezed
class ContractCreateSR with _$ContractCreateSR {
  const factory ContractCreateSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ContractCreateSR.successNotify({required String text}) = _SuccessNotify;

  const factory ContractCreateSR.created() = _ClientCreated;
}

@freezed
class ContractCreateState with _$ContractCreateState {
  ContractCreateStateData get data => this as ContractCreateStateData;

  const ContractCreateState._();

  const factory ContractCreateState.empty() = ContractCreateStateEmpty;

  const factory ContractCreateState.data({
    required bool isLoading,
    required GlobalKey<FormState> formKey,
    required TextEditingController firstName,
    required TextEditingController lastName,
    required TextEditingController phone,
    required TextEditingController phone2,
    required TextEditingController description,
    required Region? region,
    required List<Region?> regions,
    required Employee? advertiser,
    required TextEditingController monthCount,
    required TextEditingController dueDateOnMonth,
    required TextEditingController priceAmount,
    required TextEditingController filterCount,
    required TextEditingController paidAmount,
    required DateTime setupDate,
    required ContractData? contract,
  }) = ContractCreateStateData;
}
