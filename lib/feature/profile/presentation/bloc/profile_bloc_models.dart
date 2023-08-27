import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/core/models/user.dart';

part 'profile_bloc_models.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = ProfileEventInit;
  const factory ProfileEvent.logout(BuildContext context) = ProfileEventLogout;
  const factory ProfileEvent.recalculateBalance() = ProfileEventRecalculateBalance;
}

@freezed
class ProfileSR with _$ProfileSR {
  const factory ProfileSR.showDioError({
    required CommonResponseError<DefaultApiError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar,
  }) = _ShowDioErrorSnackbar;

  const factory ProfileSR.successNotify({required String text}) = _SuccessNotify;
}

@freezed
class ProfileState with _$ProfileState {
  ProfileStateData get data => this as ProfileStateData;

  const ProfileState._();

  const factory ProfileState.empty() = ClientStateEmpty;

  const factory ProfileState.data({
    required bool isLoading,
    required bool recalculateBalanceLoading,
    required User? user,
  }) = ProfileStateData;
}