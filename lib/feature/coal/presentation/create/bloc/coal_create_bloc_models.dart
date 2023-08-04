import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/feature/coal/data/coal_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'coal_create_bloc_models.freezed.dart';

@freezed
class CoalCreateEvent with _$CoalCreateEvent {
  const factory CoalCreateEvent.init({Coal? coal}) = CoalCreateEventInit;
  const factory CoalCreateEvent.create() = CoalCreateEventCreate;
  const factory CoalCreateEvent.update() = CoalCreateEventUpdate;
  const factory CoalCreateEvent.selectDate({required DateTime date}) = CoalCreateEventSelectDate;
  const factory CoalCreateEvent.selectContractor({Contract? contract}) = CoalCreateEventSelectContractor;
}

@freezed
class CoalCreateSR with _$CoalCreateSR {
  const factory CoalCreateSR.showDioError({
    required CommonResponseError<DefaultApiError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory CoalCreateSR.successNotify({required String text}) = _SuccessNotify;

  const factory CoalCreateSR.created({required Coal coal}) = _ClientCreated;
}

@freezed
class CoalCreateState with _$CoalCreateState {
  CoalCreateStateData get data => this as CoalCreateStateData;
  const CoalCreateState._();

  const factory CoalCreateState.empty() = CoalCreateStateEmpty;

  const factory CoalCreateState.data({
    required bool isLoading,
    required GlobalKey<FormState> formKey,
    required DateTime date,
    required Contract? contract,
    required Coal? coal,
  }) = CoalCreateStateData;
}