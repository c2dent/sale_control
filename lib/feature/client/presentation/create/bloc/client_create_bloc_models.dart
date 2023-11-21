import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';

part 'client_create_bloc_models.freezed.dart';

@freezed
class ClientCreateEvent with _$ClientCreateEvent {
  const factory ClientCreateEvent.init({Client? client}) = ClientCreateEventInit;

  const factory ClientCreateEvent.create() = ClientCreateEventCreate;

  const factory ClientCreateEvent.update() = ClientCreateEventUpdate;

  const factory ClientCreateEvent.selectRegion({
    required Region? region,
    required List<Region?> regions,
  }) = ClientCreateEventSelectRegion;
}

@freezed
class ClientCreateSR with _$ClientCreateSR {
  const factory ClientCreateSR.showDioError({
    required DriftRequestError<DefaultDriftError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ClientCreateSR.successNotify({required String text}) = _SuccessNotify;

  const factory ClientCreateSR.created() = _ClientCreated;
}

@freezed
class ClientCreateState with _$ClientCreateState {
  ClientCreateStateData get data => this as ClientCreateStateData;

  const ClientCreateState._();

  const factory ClientCreateState.empty() = ClientCreateStateEmpty;

  const factory ClientCreateState.data({
    required bool isLoading,
    required GlobalKey<FormState> formKey,
    required TextEditingController firstName,
    required TextEditingController lastName,
    required TextEditingController surName,
    required TextEditingController phone,
    required TextEditingController phone2,
    required TextEditingController description,
    required Region? region,
    required List<Region?> regions,
    required Client? client,
  }) = ClientCreateStateData;
}
