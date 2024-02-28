import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc.dart';
import 'package:hasap_admin/core/infrastructure/notify_error_snackbar.dart';
import 'package:hasap_admin/feature/auth/domain/auth_interactor.dart';
import 'package:hasap_admin/feature/auth/presentation/bloc/login_bloc_models.dart';
import 'package:injectable/injectable.dart';

/// Логический компонент для работы со страницей логин
@injectable
class LoginBloc extends SrBloc<LoginEvent, LoginState, LoginSR> {
  final AuthInteractor _authInteractor;
  final NotifyErrorSnackbar _notifyErrorSnackbar;

  late GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false;

  LoginBloc(
    this._authInteractor,
    this._notifyErrorSnackbar,
  ) : super(const LoginState.empty()) {
    on<LoginEventInit>(_init);
    on<LoginEventAuthorize>(_authorize);
    on<LoginEventSwitchShowPassword>(_switchShowPassword);
  }

  FutureOr<void> _init(LoginEventInit event, Emitter<LoginState> emit) {
    emit(
      LoginState.data(
        usernameController: TextEditingController(),
        passwordController: TextEditingController(),
        formKey: GlobalKey<FormState>(),
        isLoading: false,
        showPassword: false,
      ),
    );
  }

  FutureOr<void> _switchShowPassword(LoginEventSwitchShowPassword event, Emitter<LoginState> emit) {
    emit(state.data.copyWith(showPassword: !state.data.showPassword));
  }

  FutureOr<void> _authorize(LoginEventAuthorize event, Emitter<LoginState> emit) async {
    emit(state.data.copyWith(isLoading: true));
    final result = await _authInteractor.authorize(event.username, event.pass);
    if (result.isLeft) {
      addSr(LoginSR.showDioError(error: result.left, notifyErrorSnackbar: _notifyErrorSnackbar));
      emit(state.data.copyWith(isLoading: false));
    } else {
      addSr(const LoginSR.success());
    }
  }
}
