// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() filter,
    required TResult Function() resetFilter,
    required TResult Function(Service service) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? filter,
    TResult? Function()? resetFilter,
    TResult? Function(Service service)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? filter,
    TResult Function()? resetFilter,
    TResult Function(Service service)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceEventInit value) init,
    required TResult Function(ServiceEventFilter value) filter,
    required TResult Function(ServiceEventResetFilter value) resetFilter,
    required TResult Function(ServiceEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceEventInit value)? init,
    TResult? Function(ServiceEventFilter value)? filter,
    TResult? Function(ServiceEventResetFilter value)? resetFilter,
    TResult? Function(ServiceEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceEventInit value)? init,
    TResult Function(ServiceEventFilter value)? filter,
    TResult Function(ServiceEventResetFilter value)? resetFilter,
    TResult Function(ServiceEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceEventCopyWith<$Res> {
  factory $ServiceEventCopyWith(
          ServiceEvent value, $Res Function(ServiceEvent) then) =
      _$ServiceEventCopyWithImpl<$Res, ServiceEvent>;
}

/// @nodoc
class _$ServiceEventCopyWithImpl<$Res, $Val extends ServiceEvent>
    implements $ServiceEventCopyWith<$Res> {
  _$ServiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceEventInitCopyWith<$Res> {
  factory _$$ServiceEventInitCopyWith(
          _$ServiceEventInit value, $Res Function(_$ServiceEventInit) then) =
      __$$ServiceEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceEventInitCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res, _$ServiceEventInit>
    implements _$$ServiceEventInitCopyWith<$Res> {
  __$$ServiceEventInitCopyWithImpl(
      _$ServiceEventInit _value, $Res Function(_$ServiceEventInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceEventInit implements ServiceEventInit {
  const _$ServiceEventInit();

  @override
  String toString() {
    return 'ServiceEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() filter,
    required TResult Function() resetFilter,
    required TResult Function(Service service) delete,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? filter,
    TResult? Function()? resetFilter,
    TResult? Function(Service service)? delete,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? filter,
    TResult Function()? resetFilter,
    TResult Function(Service service)? delete,
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
    required TResult Function(ServiceEventInit value) init,
    required TResult Function(ServiceEventFilter value) filter,
    required TResult Function(ServiceEventResetFilter value) resetFilter,
    required TResult Function(ServiceEventDelete value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceEventInit value)? init,
    TResult? Function(ServiceEventFilter value)? filter,
    TResult? Function(ServiceEventResetFilter value)? resetFilter,
    TResult? Function(ServiceEventDelete value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceEventInit value)? init,
    TResult Function(ServiceEventFilter value)? filter,
    TResult Function(ServiceEventResetFilter value)? resetFilter,
    TResult Function(ServiceEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ServiceEventInit implements ServiceEvent {
  const factory ServiceEventInit() = _$ServiceEventInit;
}

/// @nodoc
abstract class _$$ServiceEventFilterCopyWith<$Res> {
  factory _$$ServiceEventFilterCopyWith(_$ServiceEventFilter value,
          $Res Function(_$ServiceEventFilter) then) =
      __$$ServiceEventFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceEventFilterCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res, _$ServiceEventFilter>
    implements _$$ServiceEventFilterCopyWith<$Res> {
  __$$ServiceEventFilterCopyWithImpl(
      _$ServiceEventFilter _value, $Res Function(_$ServiceEventFilter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceEventFilter implements ServiceEventFilter {
  const _$ServiceEventFilter();

  @override
  String toString() {
    return 'ServiceEvent.filter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceEventFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() filter,
    required TResult Function() resetFilter,
    required TResult Function(Service service) delete,
  }) {
    return filter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? filter,
    TResult? Function()? resetFilter,
    TResult? Function(Service service)? delete,
  }) {
    return filter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? filter,
    TResult Function()? resetFilter,
    TResult Function(Service service)? delete,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceEventInit value) init,
    required TResult Function(ServiceEventFilter value) filter,
    required TResult Function(ServiceEventResetFilter value) resetFilter,
    required TResult Function(ServiceEventDelete value) delete,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceEventInit value)? init,
    TResult? Function(ServiceEventFilter value)? filter,
    TResult? Function(ServiceEventResetFilter value)? resetFilter,
    TResult? Function(ServiceEventDelete value)? delete,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceEventInit value)? init,
    TResult Function(ServiceEventFilter value)? filter,
    TResult Function(ServiceEventResetFilter value)? resetFilter,
    TResult Function(ServiceEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class ServiceEventFilter implements ServiceEvent {
  const factory ServiceEventFilter() = _$ServiceEventFilter;
}

/// @nodoc
abstract class _$$ServiceEventResetFilterCopyWith<$Res> {
  factory _$$ServiceEventResetFilterCopyWith(_$ServiceEventResetFilter value,
          $Res Function(_$ServiceEventResetFilter) then) =
      __$$ServiceEventResetFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceEventResetFilterCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res, _$ServiceEventResetFilter>
    implements _$$ServiceEventResetFilterCopyWith<$Res> {
  __$$ServiceEventResetFilterCopyWithImpl(_$ServiceEventResetFilter _value,
      $Res Function(_$ServiceEventResetFilter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceEventResetFilter implements ServiceEventResetFilter {
  const _$ServiceEventResetFilter();

  @override
  String toString() {
    return 'ServiceEvent.resetFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceEventResetFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() filter,
    required TResult Function() resetFilter,
    required TResult Function(Service service) delete,
  }) {
    return resetFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? filter,
    TResult? Function()? resetFilter,
    TResult? Function(Service service)? delete,
  }) {
    return resetFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? filter,
    TResult Function()? resetFilter,
    TResult Function(Service service)? delete,
    required TResult orElse(),
  }) {
    if (resetFilter != null) {
      return resetFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceEventInit value) init,
    required TResult Function(ServiceEventFilter value) filter,
    required TResult Function(ServiceEventResetFilter value) resetFilter,
    required TResult Function(ServiceEventDelete value) delete,
  }) {
    return resetFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceEventInit value)? init,
    TResult? Function(ServiceEventFilter value)? filter,
    TResult? Function(ServiceEventResetFilter value)? resetFilter,
    TResult? Function(ServiceEventDelete value)? delete,
  }) {
    return resetFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceEventInit value)? init,
    TResult Function(ServiceEventFilter value)? filter,
    TResult Function(ServiceEventResetFilter value)? resetFilter,
    TResult Function(ServiceEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (resetFilter != null) {
      return resetFilter(this);
    }
    return orElse();
  }
}

abstract class ServiceEventResetFilter implements ServiceEvent {
  const factory ServiceEventResetFilter() = _$ServiceEventResetFilter;
}

/// @nodoc
abstract class _$$ServiceEventDeleteCopyWith<$Res> {
  factory _$$ServiceEventDeleteCopyWith(_$ServiceEventDelete value,
          $Res Function(_$ServiceEventDelete) then) =
      __$$ServiceEventDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({Service service});

  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class __$$ServiceEventDeleteCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res, _$ServiceEventDelete>
    implements _$$ServiceEventDeleteCopyWith<$Res> {
  __$$ServiceEventDeleteCopyWithImpl(
      _$ServiceEventDelete _value, $Res Function(_$ServiceEventDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$ServiceEventDelete(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value));
    });
  }
}

/// @nodoc

class _$ServiceEventDelete implements ServiceEventDelete {
  const _$ServiceEventDelete({required this.service});

  @override
  final Service service;

  @override
  String toString() {
    return 'ServiceEvent.delete(service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceEventDelete &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceEventDeleteCopyWith<_$ServiceEventDelete> get copyWith =>
      __$$ServiceEventDeleteCopyWithImpl<_$ServiceEventDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() filter,
    required TResult Function() resetFilter,
    required TResult Function(Service service) delete,
  }) {
    return delete(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? filter,
    TResult? Function()? resetFilter,
    TResult? Function(Service service)? delete,
  }) {
    return delete?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? filter,
    TResult Function()? resetFilter,
    TResult Function(Service service)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceEventInit value) init,
    required TResult Function(ServiceEventFilter value) filter,
    required TResult Function(ServiceEventResetFilter value) resetFilter,
    required TResult Function(ServiceEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceEventInit value)? init,
    TResult? Function(ServiceEventFilter value)? filter,
    TResult? Function(ServiceEventResetFilter value)? resetFilter,
    TResult? Function(ServiceEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceEventInit value)? init,
    TResult Function(ServiceEventFilter value)? filter,
    TResult Function(ServiceEventResetFilter value)? resetFilter,
    TResult Function(ServiceEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ServiceEventDelete implements ServiceEvent {
  const factory ServiceEventDelete({required final Service service}) =
      _$ServiceEventDelete;

  Service get service;
  @JsonKey(ignore: true)
  _$$ServiceEventDeleteCopyWith<_$ServiceEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Service service) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Service service)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Service service)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
    required TResult Function(_SuccessNotify value) successNotify,
    required TResult Function(_ServiceDeleted value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ServiceDeleted value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ServiceDeleted value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceSRCopyWith<$Res> {
  factory $ServiceSRCopyWith(ServiceSR value, $Res Function(ServiceSR) then) =
      _$ServiceSRCopyWithImpl<$Res, ServiceSR>;
}

/// @nodoc
class _$ServiceSRCopyWithImpl<$Res, $Val extends ServiceSR>
    implements $ServiceSRCopyWith<$Res> {
  _$ServiceSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$ServiceSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
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
    return 'ServiceSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
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
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Service service) delete,
  }) {
    return showDioError(error, notifyErrorSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Service service)? delete,
  }) {
    return showDioError?.call(error, notifyErrorSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Service service)? delete,
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
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
    required TResult Function(_SuccessNotify value) successNotify,
    required TResult Function(_ServiceDeleted value) delete,
  }) {
    return showDioError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ServiceDeleted value)? delete,
  }) {
    return showDioError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ServiceDeleted value)? delete,
    required TResult orElse(),
  }) {
    if (showDioError != null) {
      return showDioError(this);
    }
    return orElse();
  }
}

abstract class _ShowDioErrorSnackbar implements ServiceSR {
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
abstract class _$$_SuccessNotifyCopyWith<$Res> {
  factory _$$_SuccessNotifyCopyWith(
          _$_SuccessNotify value, $Res Function(_$_SuccessNotify) then) =
      __$$_SuccessNotifyCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_SuccessNotifyCopyWithImpl<$Res>
    extends _$ServiceSRCopyWithImpl<$Res, _$_SuccessNotify>
    implements _$$_SuccessNotifyCopyWith<$Res> {
  __$$_SuccessNotifyCopyWithImpl(
      _$_SuccessNotify _value, $Res Function(_$_SuccessNotify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_SuccessNotify(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessNotify implements _SuccessNotify {
  const _$_SuccessNotify({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ServiceSR.successNotify(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessNotify &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessNotifyCopyWith<_$_SuccessNotify> get copyWith =>
      __$$_SuccessNotifyCopyWithImpl<_$_SuccessNotify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Service service) delete,
  }) {
    return successNotify(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Service service)? delete,
  }) {
    return successNotify?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Service service)? delete,
    required TResult orElse(),
  }) {
    if (successNotify != null) {
      return successNotify(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
    required TResult Function(_SuccessNotify value) successNotify,
    required TResult Function(_ServiceDeleted value) delete,
  }) {
    return successNotify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ServiceDeleted value)? delete,
  }) {
    return successNotify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ServiceDeleted value)? delete,
    required TResult orElse(),
  }) {
    if (successNotify != null) {
      return successNotify(this);
    }
    return orElse();
  }
}

abstract class _SuccessNotify implements ServiceSR {
  const factory _SuccessNotify({required final String text}) = _$_SuccessNotify;

  String get text;
  @JsonKey(ignore: true)
  _$$_SuccessNotifyCopyWith<_$_SuccessNotify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServiceDeletedCopyWith<$Res> {
  factory _$$_ServiceDeletedCopyWith(
          _$_ServiceDeleted value, $Res Function(_$_ServiceDeleted) then) =
      __$$_ServiceDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Service service});

  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class __$$_ServiceDeletedCopyWithImpl<$Res>
    extends _$ServiceSRCopyWithImpl<$Res, _$_ServiceDeleted>
    implements _$$_ServiceDeletedCopyWith<$Res> {
  __$$_ServiceDeletedCopyWithImpl(
      _$_ServiceDeleted _value, $Res Function(_$_ServiceDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$_ServiceDeleted(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value));
    });
  }
}

/// @nodoc

class _$_ServiceDeleted implements _ServiceDeleted {
  const _$_ServiceDeleted({required this.service});

  @override
  final Service service;

  @override
  String toString() {
    return 'ServiceSR.delete(service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceDeleted &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceDeletedCopyWith<_$_ServiceDeleted> get copyWith =>
      __$$_ServiceDeletedCopyWithImpl<_$_ServiceDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Service service) delete,
  }) {
    return delete(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Service service)? delete,
  }) {
    return delete?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Service service)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
    required TResult Function(_SuccessNotify value) successNotify,
    required TResult Function(_ServiceDeleted value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ServiceDeleted value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ServiceDeleted value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _ServiceDeleted implements ServiceSR {
  const factory _ServiceDeleted({required final Service service}) =
      _$_ServiceDeleted;

  Service get service;
  @JsonKey(ignore: true)
  _$$_ServiceDeletedCopyWith<_$_ServiceDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading, List<Filter> filters, List<Service> services)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading, List<Filter> filters, List<Service> services)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading, List<Filter> filters, List<Service> services)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceStateEmpty value) empty,
    required TResult Function(ServiceStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceStateEmpty value)? empty,
    TResult? Function(ServiceStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceStateEmpty value)? empty,
    TResult Function(ServiceStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStateCopyWith<$Res> {
  factory $ServiceStateCopyWith(
          ServiceState value, $Res Function(ServiceState) then) =
      _$ServiceStateCopyWithImpl<$Res, ServiceState>;
}

/// @nodoc
class _$ServiceStateCopyWithImpl<$Res, $Val extends ServiceState>
    implements $ServiceStateCopyWith<$Res> {
  _$ServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceStateEmptyCopyWith<$Res> {
  factory _$$ServiceStateEmptyCopyWith(
          _$ServiceStateEmpty value, $Res Function(_$ServiceStateEmpty) then) =
      __$$ServiceStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceStateEmptyCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$ServiceStateEmpty>
    implements _$$ServiceStateEmptyCopyWith<$Res> {
  __$$ServiceStateEmptyCopyWithImpl(
      _$ServiceStateEmpty _value, $Res Function(_$ServiceStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceStateEmpty extends ServiceStateEmpty {
  const _$ServiceStateEmpty() : super._();

  @override
  String toString() {
    return 'ServiceState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading, List<Filter> filters, List<Service> services)
        data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading, List<Filter> filters, List<Service> services)?
        data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading, List<Filter> filters, List<Service> services)?
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
    required TResult Function(ServiceStateEmpty value) empty,
    required TResult Function(ServiceStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceStateEmpty value)? empty,
    TResult? Function(ServiceStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceStateEmpty value)? empty,
    TResult Function(ServiceStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ServiceStateEmpty extends ServiceState {
  const factory ServiceStateEmpty() = _$ServiceStateEmpty;
  const ServiceStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$ServiceStateDataCopyWith<$Res> {
  factory _$$ServiceStateDataCopyWith(
          _$ServiceStateData value, $Res Function(_$ServiceStateData) then) =
      __$$ServiceStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, List<Filter> filters, List<Service> services});
}

/// @nodoc
class __$$ServiceStateDataCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$ServiceStateData>
    implements _$$ServiceStateDataCopyWith<$Res> {
  __$$ServiceStateDataCopyWithImpl(
      _$ServiceStateData _value, $Res Function(_$ServiceStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? filters = null,
    Object? services = null,
  }) {
    return _then(_$ServiceStateData(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ));
  }
}

/// @nodoc

class _$ServiceStateData extends ServiceStateData {
  const _$ServiceStateData(
      {required this.isLoading,
      required final List<Filter> filters,
      required final List<Service> services})
      : _filters = filters,
        _services = services,
        super._();

  @override
  final bool isLoading;
  final List<Filter> _filters;
  @override
  List<Filter> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<Service> _services;
  @override
  List<Service> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceState.data(isLoading: $isLoading, filters: $filters, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceStateData &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceStateDataCopyWith<_$ServiceStateData> get copyWith =>
      __$$ServiceStateDataCopyWithImpl<_$ServiceStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading, List<Filter> filters, List<Service> services)
        data,
  }) {
    return data(isLoading, filters, services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading, List<Filter> filters, List<Service> services)?
        data,
  }) {
    return data?.call(isLoading, filters, services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading, List<Filter> filters, List<Service> services)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, filters, services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceStateEmpty value) empty,
    required TResult Function(ServiceStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceStateEmpty value)? empty,
    TResult? Function(ServiceStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceStateEmpty value)? empty,
    TResult Function(ServiceStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ServiceStateData extends ServiceState {
  const factory ServiceStateData(
      {required final bool isLoading,
      required final List<Filter> filters,
      required final List<Service> services}) = _$ServiceStateData;
  const ServiceStateData._() : super._();

  bool get isLoading;
  List<Filter> get filters;
  List<Service> get services;
  @JsonKey(ignore: true)
  _$$ServiceStateDataCopyWith<_$ServiceStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
