import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';

part 'payment_create_bloc_models.freezed.dart';

@freezed
class PaymentCreateEvent with _$PaymentCreateEvent {
  const factory PaymentCreateEvent.init({PaymentData? payment}) = PaymentCreateEventInit;

  const factory PaymentCreateEvent.create() = PaymentCreateEventCreate;

  const factory PaymentCreateEvent.update() = PaymentCreateEventUpdate;

  const factory PaymentCreateEvent.selectContract({required ContractData? contract}) = PaymentCreateEventSelectContract;

  const factory PaymentCreateEvent.selectDate({required DateTime date}) = PaymentCreateEventSelectDate;
}

@freezed
class PaymentCreateSR with _$PaymentCreateSR {
  const factory PaymentCreateSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory PaymentCreateSR.successNotify({required String text}) = _SuccessNotify;

  const factory PaymentCreateSR.created() = _ClientCreated;
}

@freezed
class PaymentCreateState with _$PaymentCreateState {
  PaymentCreateStateData get data => this as PaymentCreateStateData;

  const PaymentCreateState._();

  const factory PaymentCreateState.empty() = PaymentCreateStateEmpty;

  const factory PaymentCreateState.data({
    required bool isLoading,
    required GlobalKey<FormState> formKey,
    required TextEditingController amount,
    required TextEditingController comment,
    required DateTime date,
    required ContractData? contract,
    required PaymentData? payment,
  }) = PaymentCreateStateData;
}