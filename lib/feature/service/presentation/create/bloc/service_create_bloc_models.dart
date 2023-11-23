import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';

part 'service_create_bloc_models.freezed.dart';

@freezed
class ServiceCreateEvent with _$ServiceCreateEvent {
  const factory ServiceCreateEvent.init({ServiceData? service, ContractData? contractData}) = ServiceCreateEventInit;
  const factory ServiceCreateEvent.create() = ServiceCreateEventCreate;
  const factory ServiceCreateEvent.update() = ServiceCreateEventUpdate;
  const factory ServiceCreateEvent.selectDate({required DateTime date}) = ServiceCreateEventSelectDate;
  const factory ServiceCreateEvent.selectContractor({ContractData? contract}) = ServiceCreateEventSelectContractor;
  const factory ServiceCreateEvent.selectType({ServiceType? type}) = ServiceCreateEventSelectType;
}

@freezed
class ServiceCreateSR with _$ServiceCreateSR {
  const factory ServiceCreateSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ServiceCreateSR.successNotify({required String text}) = _SuccessNotify;

  const factory ServiceCreateSR.created() = _ClientCreated;
}

@freezed
class ServiceCreateState with _$ServiceCreateState {
  ServiceCreateStateData get data => this as ServiceCreateStateData;
  const ServiceCreateState._();

  const factory ServiceCreateState.empty() = ServiceCreateStateEmpty;

  const factory ServiceCreateState.data({
    required bool isLoading,
    required GlobalKey<FormState> formKey,
    required DateTime date,
    required TextEditingController comment,
    required TextEditingController amount,
    required ServiceType? type,
    required ContractData? contract,
    required ServiceData? service,
  }) = ServiceCreateStateData;
}