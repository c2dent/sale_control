import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';

part 'login_bloc_models.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.authorize({
    required String username,
    required String pass,
}) = LoginEventAuthorize;

  const factory LoginEvent.init() = LoginEventInit;

  const factory LoginEvent.switchShowPassword() = LoginEventSwitchShowPassword;
}

@freezed
class LoginSR with _$LoginSR {
  const factory LoginSR.success() = _Success;

  const factory LoginSR.showDioError({
    required CommonResponseError<DefaultApiError> error,
    required NotifyErrorSnackbar notifyErrorSnackbar}) = _ShowDioErrorSnackbar;
}

@freezed
class LoginState with _$LoginState {
  LoginStateData get data => this as LoginStateData;
  const LoginState._();

  const factory LoginState.empty() = LoginStateEmpty;

  const factory LoginState.data({
    required GlobalKey<FormState> formKey,
    required TextEditingController usernameController,
    required TextEditingController passwordController,
    required bool isLoading,
    required bool showPassword,
  }) = LoginStateData;
}