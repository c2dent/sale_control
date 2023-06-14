// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String pass) authorize,
    required TResult Function() init,
    required TResult Function() switchShowPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String pass)? authorize,
    TResult? Function()? init,
    TResult? Function()? switchShowPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String pass)? authorize,
    TResult Function()? init,
    TResult Function()? switchShowPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventInit value) init,
    required TResult Function(LoginEventSwitchShowPassword value)
        switchShowPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventAuthorize value)? authorize,
    TResult? Function(LoginEventInit value)? init,
    TResult? Function(LoginEventSwitchShowPassword value)? switchShowPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
    TResult Function(LoginEventSwitchShowPassword value)? switchShowPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginEventAuthorizeCopyWith<$Res> {
  factory _$$LoginEventAuthorizeCopyWith(_$LoginEventAuthorize value,
          $Res Function(_$LoginEventAuthorize) then) =
      __$$LoginEventAuthorizeCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String pass});
}

/// @nodoc
class __$$LoginEventAuthorizeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventAuthorize>
    implements _$$LoginEventAuthorizeCopyWith<$Res> {
  __$$LoginEventAuthorizeCopyWithImpl(
      _$LoginEventAuthorize _value, $Res Function(_$LoginEventAuthorize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? pass = null,
  }) {
    return _then(_$LoginEventAuthorize(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      pass: null == pass
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventAuthorize implements LoginEventAuthorize {
  const _$LoginEventAuthorize({required this.username, required this.pass});

  @override
  final String username;
  @override
  final String pass;

  @override
  String toString() {
    return 'LoginEvent.authorize(username: $username, pass: $pass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventAuthorize &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, pass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventAuthorizeCopyWith<_$LoginEventAuthorize> get copyWith =>
      __$$LoginEventAuthorizeCopyWithImpl<_$LoginEventAuthorize>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String pass) authorize,
    required TResult Function() init,
    required TResult Function() switchShowPassword,
  }) {
    return authorize(username, pass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String pass)? authorize,
    TResult? Function()? init,
    TResult? Function()? switchShowPassword,
  }) {
    return authorize?.call(username, pass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String pass)? authorize,
    TResult Function()? init,
    TResult Function()? switchShowPassword,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(username, pass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventInit value) init,
    required TResult Function(LoginEventSwitchShowPassword value)
        switchShowPassword,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventAuthorize value)? authorize,
    TResult? Function(LoginEventInit value)? init,
    TResult? Function(LoginEventSwitchShowPassword value)? switchShowPassword,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
    TResult Function(LoginEventSwitchShowPassword value)? switchShowPassword,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class LoginEventAuthorize implements LoginEvent {
  const factory LoginEventAuthorize(
      {required final String username,
      required final String pass}) = _$LoginEventAuthorize;

  String get username;
  String get pass;
  @JsonKey(ignore: true)
  _$$LoginEventAuthorizeCopyWith<_$LoginEventAuthorize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventInitCopyWith<$Res> {
  factory _$$LoginEventInitCopyWith(
          _$LoginEventInit value, $Res Function(_$LoginEventInit) then) =
      __$$LoginEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventInitCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventInit>
    implements _$$LoginEventInitCopyWith<$Res> {
  __$$LoginEventInitCopyWithImpl(
      _$LoginEventInit _value, $Res Function(_$LoginEventInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginEventInit implements LoginEventInit {
  const _$LoginEventInit();

  @override
  String toString() {
    return 'LoginEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String pass) authorize,
    required TResult Function() init,
    required TResult Function() switchShowPassword,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String pass)? authorize,
    TResult? Function()? init,
    TResult? Function()? switchShowPassword,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String pass)? authorize,
    TResult Function()? init,
    TResult Function()? switchShowPassword,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventInit value) init,
    required TResult Function(LoginEventSwitchShowPassword value)
        switchShowPassword,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventAuthorize value)? authorize,
    TResult? Function(LoginEventInit value)? init,
    TResult? Function(LoginEventSwitchShowPassword value)? switchShowPassword,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
    TResult Function(LoginEventSwitchShowPassword value)? switchShowPassword,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LoginEventInit implements LoginEvent {
  const factory LoginEventInit() = _$LoginEventInit;
}

/// @nodoc
abstract class _$$LoginEventSwitchShowPasswordCopyWith<$Res> {
  factory _$$LoginEventSwitchShowPasswordCopyWith(
          _$LoginEventSwitchShowPassword value,
          $Res Function(_$LoginEventSwitchShowPassword) then) =
      __$$LoginEventSwitchShowPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventSwitchShowPasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventSwitchShowPassword>
    implements _$$LoginEventSwitchShowPasswordCopyWith<$Res> {
  __$$LoginEventSwitchShowPasswordCopyWithImpl(
      _$LoginEventSwitchShowPassword _value,
      $Res Function(_$LoginEventSwitchShowPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginEventSwitchShowPassword implements LoginEventSwitchShowPassword {
  const _$LoginEventSwitchShowPassword();

  @override
  String toString() {
    return 'LoginEvent.switchShowPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventSwitchShowPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String pass) authorize,
    required TResult Function() init,
    required TResult Function() switchShowPassword,
  }) {
    return switchShowPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String pass)? authorize,
    TResult? Function()? init,
    TResult? Function()? switchShowPassword,
  }) {
    return switchShowPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String pass)? authorize,
    TResult Function()? init,
    TResult Function()? switchShowPassword,
    required TResult orElse(),
  }) {
    if (switchShowPassword != null) {
      return switchShowPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventInit value) init,
    required TResult Function(LoginEventSwitchShowPassword value)
        switchShowPassword,
  }) {
    return switchShowPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventAuthorize value)? authorize,
    TResult? Function(LoginEventInit value)? init,
    TResult? Function(LoginEventSwitchShowPassword value)? switchShowPassword,
  }) {
    return switchShowPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
    TResult Function(LoginEventSwitchShowPassword value)? switchShowPassword,
    required TResult orElse(),
  }) {
    if (switchShowPassword != null) {
      return switchShowPassword(this);
    }
    return orElse();
  }
}

abstract class LoginEventSwitchShowPassword implements LoginEvent {
  const factory LoginEventSwitchShowPassword() = _$LoginEventSwitchShowPassword;
}

/// @nodoc
mixin _$LoginSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSRCopyWith<$Res> {
  factory $LoginSRCopyWith(LoginSR value, $Res Function(LoginSR) then) =
      _$LoginSRCopyWithImpl<$Res, LoginSR>;
}

/// @nodoc
class _$LoginSRCopyWithImpl<$Res, $Val extends LoginSR>
    implements $LoginSRCopyWith<$Res> {
  _$LoginSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$LoginSRCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'LoginSR.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginSR {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_ShowDioErrorSnackbarCopyWith<$Res> {
  factory _$$_ShowDioErrorSnackbarCopyWith(_$_ShowDioErrorSnackbar value,
          $Res Function(_$_ShowDioErrorSnackbar) then) =
      __$$_ShowDioErrorSnackbarCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CommonResponseError<DefaultApiError> error,
      NotifyErrorSnackbar notifyErrorSnackbar});

  $CommonResponseErrorCopyWith<DefaultApiError, $Res> get error;
}

/// @nodoc
class __$$_ShowDioErrorSnackbarCopyWithImpl<$Res>
    extends _$LoginSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
    implements _$$_ShowDioErrorSnackbarCopyWith<$Res> {
  __$$_ShowDioErrorSnackbarCopyWithImpl(_$_ShowDioErrorSnackbar _value,
      $Res Function(_$_ShowDioErrorSnackbar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? notifyErrorSnackbar = null,
  }) {
    return _then(_$_ShowDioErrorSnackbar(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CommonResponseError<DefaultApiError>,
      notifyErrorSnackbar: null == notifyErrorSnackbar
          ? _value.notifyErrorSnackbar
          : notifyErrorSnackbar // ignore: cast_nullable_to_non_nullable
              as NotifyErrorSnackbar,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommonResponseErrorCopyWith<DefaultApiError, $Res> get error {
    return $CommonResponseErrorCopyWith<DefaultApiError, $Res>(_value.error,
        (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_ShowDioErrorSnackbar implements _ShowDioErrorSnackbar {
  const _$_ShowDioErrorSnackbar(
      {required this.error, required this.notifyErrorSnackbar});

  @override
  final CommonResponseError<DefaultApiError> error;
  @override
  final NotifyErrorSnackbar notifyErrorSnackbar;

  @override
  String toString() {
    return 'LoginSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowDioErrorSnackbar &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.notifyErrorSnackbar, notifyErrorSnackbar) ||
                other.notifyErrorSnackbar == notifyErrorSnackbar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, notifyErrorSnackbar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowDioErrorSnackbarCopyWith<_$_ShowDioErrorSnackbar> get copyWith =>
      __$$_ShowDioErrorSnackbarCopyWithImpl<_$_ShowDioErrorSnackbar>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
  }) {
    return showDioError(error, notifyErrorSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
  }) {
    return showDioError?.call(error, notifyErrorSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    required TResult orElse(),
  }) {
    if (showDioError != null) {
      return showDioError(error, notifyErrorSnackbar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
  }) {
    return showDioError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
  }) {
    return showDioError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    required TResult orElse(),
  }) {
    if (showDioError != null) {
      return showDioError(this);
    }
    return orElse();
  }
}

abstract class _ShowDioErrorSnackbar implements LoginSR {
  const factory _ShowDioErrorSnackbar(
          {required final CommonResponseError<DefaultApiError> error,
          required final NotifyErrorSnackbar notifyErrorSnackbar}) =
      _$_ShowDioErrorSnackbar;

  CommonResponseError<DefaultApiError> get error;
  NotifyErrorSnackbar get notifyErrorSnackbar;
  @JsonKey(ignore: true)
  _$$_ShowDioErrorSnackbarCopyWith<_$_ShowDioErrorSnackbar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateEmpty value) empty,
    required TResult Function(LoginStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateEmpty value)? empty,
    TResult? Function(LoginStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateEmpty value)? empty,
    TResult Function(LoginStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateEmptyCopyWith<$Res> {
  factory _$$LoginStateEmptyCopyWith(
          _$LoginStateEmpty value, $Res Function(_$LoginStateEmpty) then) =
      __$$LoginStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateEmptyCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateEmpty>
    implements _$$LoginStateEmptyCopyWith<$Res> {
  __$$LoginStateEmptyCopyWithImpl(
      _$LoginStateEmpty _value, $Res Function(_$LoginStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateEmpty extends LoginStateEmpty {
  const _$LoginStateEmpty() : super._();

  @override
  String toString() {
    return 'LoginState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)
        data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)?
        data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)?
        data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateEmpty value) empty,
    required TResult Function(LoginStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateEmpty value)? empty,
    TResult? Function(LoginStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateEmpty value)? empty,
    TResult Function(LoginStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class LoginStateEmpty extends LoginState {
  const factory LoginStateEmpty() = _$LoginStateEmpty;
  const LoginStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$LoginStateDataCopyWith<$Res> {
  factory _$$LoginStateDataCopyWith(
          _$LoginStateData value, $Res Function(_$LoginStateData) then) =
      __$$LoginStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      TextEditingController usernameController,
      TextEditingController passwordController,
      bool isLoading,
      bool showPassword});
}

/// @nodoc
class __$$LoginStateDataCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateData>
    implements _$$LoginStateDataCopyWith<$Res> {
  __$$LoginStateDataCopyWithImpl(
      _$LoginStateData _value, $Res Function(_$LoginStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? usernameController = null,
    Object? passwordController = null,
    Object? isLoading = null,
    Object? showPassword = null,
  }) {
    return _then(_$LoginStateData(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      usernameController: null == usernameController
          ? _value.usernameController
          : usernameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateData extends LoginStateData {
  const _$LoginStateData(
      {required this.formKey,
      required this.usernameController,
      required this.passwordController,
      required this.isLoading,
      required this.showPassword})
      : super._();

  @override
  final GlobalKey<FormState> formKey;
  @override
  final TextEditingController usernameController;
  @override
  final TextEditingController passwordController;
  @override
  final bool isLoading;
  @override
  final bool showPassword;

  @override
  String toString() {
    return 'LoginState.data(formKey: $formKey, usernameController: $usernameController, passwordController: $passwordController, isLoading: $isLoading, showPassword: $showPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateData &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.usernameController, usernameController) ||
                other.usernameController == usernameController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey, usernameController,
      passwordController, isLoading, showPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateDataCopyWith<_$LoginStateData> get copyWith =>
      __$$LoginStateDataCopyWithImpl<_$LoginStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)
        data,
  }) {
    return data(formKey, usernameController, passwordController, isLoading,
        showPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)?
        data,
  }) {
    return data?.call(formKey, usernameController, passwordController,
        isLoading, showPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            GlobalKey<FormState> formKey,
            TextEditingController usernameController,
            TextEditingController passwordController,
            bool isLoading,
            bool showPassword)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(formKey, usernameController, passwordController, isLoading,
          showPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateEmpty value) empty,
    required TResult Function(LoginStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateEmpty value)? empty,
    TResult? Function(LoginStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateEmpty value)? empty,
    TResult Function(LoginStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LoginStateData extends LoginState {
  const factory LoginStateData(
      {required final GlobalKey<FormState> formKey,
      required final TextEditingController usernameController,
      required final TextEditingController passwordController,
      required final bool isLoading,
      required final bool showPassword}) = _$LoginStateData;
  const LoginStateData._() : super._();

  GlobalKey<FormState> get formKey;
  TextEditingController get usernameController;
  TextEditingController get passwordController;
  bool get isLoading;
  bool get showPassword;
  @JsonKey(ignore: true)
  _$$LoginStateDataCopyWith<_$LoginStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
