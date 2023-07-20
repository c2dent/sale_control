// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_create_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client? client) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client? client)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client? client)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientCreateEventInit value) init,
    required TResult Function(ClientCreateEventCreate value) create,
    required TResult Function(ClientCreateEventUpdate value) update,
    required TResult Function(ClientCreateEventSelectRegion value) selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateEventInit value)? init,
    TResult? Function(ClientCreateEventCreate value)? create,
    TResult? Function(ClientCreateEventUpdate value)? update,
    TResult? Function(ClientCreateEventSelectRegion value)? selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateEventInit value)? init,
    TResult Function(ClientCreateEventCreate value)? create,
    TResult Function(ClientCreateEventUpdate value)? update,
    TResult Function(ClientCreateEventSelectRegion value)? selectRegion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCreateEventCopyWith<$Res> {
  factory $ClientCreateEventCopyWith(
          ClientCreateEvent value, $Res Function(ClientCreateEvent) then) =
      _$ClientCreateEventCopyWithImpl<$Res, ClientCreateEvent>;
}

/// @nodoc
class _$ClientCreateEventCopyWithImpl<$Res, $Val extends ClientCreateEvent>
    implements $ClientCreateEventCopyWith<$Res> {
  _$ClientCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientCreateEventInitCopyWith<$Res> {
  factory _$$ClientCreateEventInitCopyWith(_$ClientCreateEventInit value,
          $Res Function(_$ClientCreateEventInit) then) =
      __$$ClientCreateEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({Client? client});

  $ClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$ClientCreateEventInitCopyWithImpl<$Res>
    extends _$ClientCreateEventCopyWithImpl<$Res, _$ClientCreateEventInit>
    implements _$$ClientCreateEventInitCopyWith<$Res> {
  __$$ClientCreateEventInitCopyWithImpl(_$ClientCreateEventInit _value,
      $Res Function(_$ClientCreateEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_$ClientCreateEventInit(
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc

class _$ClientCreateEventInit implements ClientCreateEventInit {
  const _$ClientCreateEventInit({this.client});

  @override
  final Client? client;

  @override
  String toString() {
    return 'ClientCreateEvent.init(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientCreateEventInit &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientCreateEventInitCopyWith<_$ClientCreateEventInit> get copyWith =>
      __$$ClientCreateEventInitCopyWithImpl<_$ClientCreateEventInit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client? client) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
  }) {
    return init(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client? client)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
  }) {
    return init?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client? client)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientCreateEventInit value) init,
    required TResult Function(ClientCreateEventCreate value) create,
    required TResult Function(ClientCreateEventUpdate value) update,
    required TResult Function(ClientCreateEventSelectRegion value) selectRegion,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateEventInit value)? init,
    TResult? Function(ClientCreateEventCreate value)? create,
    TResult? Function(ClientCreateEventUpdate value)? update,
    TResult? Function(ClientCreateEventSelectRegion value)? selectRegion,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateEventInit value)? init,
    TResult Function(ClientCreateEventCreate value)? create,
    TResult Function(ClientCreateEventUpdate value)? update,
    TResult Function(ClientCreateEventSelectRegion value)? selectRegion,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ClientCreateEventInit implements ClientCreateEvent {
  const factory ClientCreateEventInit({final Client? client}) =
      _$ClientCreateEventInit;

  Client? get client;
  @JsonKey(ignore: true)
  _$$ClientCreateEventInitCopyWith<_$ClientCreateEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientCreateEventCreateCopyWith<$Res> {
  factory _$$ClientCreateEventCreateCopyWith(_$ClientCreateEventCreate value,
          $Res Function(_$ClientCreateEventCreate) then) =
      __$$ClientCreateEventCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientCreateEventCreateCopyWithImpl<$Res>
    extends _$ClientCreateEventCopyWithImpl<$Res, _$ClientCreateEventCreate>
    implements _$$ClientCreateEventCreateCopyWith<$Res> {
  __$$ClientCreateEventCreateCopyWithImpl(_$ClientCreateEventCreate _value,
      $Res Function(_$ClientCreateEventCreate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientCreateEventCreate implements ClientCreateEventCreate {
  const _$ClientCreateEventCreate();

  @override
  String toString() {
    return 'ClientCreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientCreateEventCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client? client) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client? client)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client? client)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientCreateEventInit value) init,
    required TResult Function(ClientCreateEventCreate value) create,
    required TResult Function(ClientCreateEventUpdate value) update,
    required TResult Function(ClientCreateEventSelectRegion value) selectRegion,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateEventInit value)? init,
    TResult? Function(ClientCreateEventCreate value)? create,
    TResult? Function(ClientCreateEventUpdate value)? update,
    TResult? Function(ClientCreateEventSelectRegion value)? selectRegion,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateEventInit value)? init,
    TResult Function(ClientCreateEventCreate value)? create,
    TResult Function(ClientCreateEventUpdate value)? update,
    TResult Function(ClientCreateEventSelectRegion value)? selectRegion,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ClientCreateEventCreate implements ClientCreateEvent {
  const factory ClientCreateEventCreate() = _$ClientCreateEventCreate;
}

/// @nodoc
abstract class _$$ClientCreateEventUpdateCopyWith<$Res> {
  factory _$$ClientCreateEventUpdateCopyWith(_$ClientCreateEventUpdate value,
          $Res Function(_$ClientCreateEventUpdate) then) =
      __$$ClientCreateEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientCreateEventUpdateCopyWithImpl<$Res>
    extends _$ClientCreateEventCopyWithImpl<$Res, _$ClientCreateEventUpdate>
    implements _$$ClientCreateEventUpdateCopyWith<$Res> {
  __$$ClientCreateEventUpdateCopyWithImpl(_$ClientCreateEventUpdate _value,
      $Res Function(_$ClientCreateEventUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientCreateEventUpdate implements ClientCreateEventUpdate {
  const _$ClientCreateEventUpdate();

  @override
  String toString() {
    return 'ClientCreateEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientCreateEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client? client) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client? client)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client? client)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientCreateEventInit value) init,
    required TResult Function(ClientCreateEventCreate value) create,
    required TResult Function(ClientCreateEventUpdate value) update,
    required TResult Function(ClientCreateEventSelectRegion value) selectRegion,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateEventInit value)? init,
    TResult? Function(ClientCreateEventCreate value)? create,
    TResult? Function(ClientCreateEventUpdate value)? update,
    TResult? Function(ClientCreateEventSelectRegion value)? selectRegion,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateEventInit value)? init,
    TResult Function(ClientCreateEventCreate value)? create,
    TResult Function(ClientCreateEventUpdate value)? update,
    TResult Function(ClientCreateEventSelectRegion value)? selectRegion,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ClientCreateEventUpdate implements ClientCreateEvent {
  const factory ClientCreateEventUpdate() = _$ClientCreateEventUpdate;
}

/// @nodoc
abstract class _$$ClientCreateEventSelectRegionCopyWith<$Res> {
  factory _$$ClientCreateEventSelectRegionCopyWith(
          _$ClientCreateEventSelectRegion value,
          $Res Function(_$ClientCreateEventSelectRegion) then) =
      __$$ClientCreateEventSelectRegionCopyWithImpl<$Res>;
  @useResult
  $Res call({Region? region, List<Region?> regions});

  $RegionCopyWith<$Res>? get region;
}

/// @nodoc
class __$$ClientCreateEventSelectRegionCopyWithImpl<$Res>
    extends _$ClientCreateEventCopyWithImpl<$Res,
        _$ClientCreateEventSelectRegion>
    implements _$$ClientCreateEventSelectRegionCopyWith<$Res> {
  __$$ClientCreateEventSelectRegionCopyWithImpl(
      _$ClientCreateEventSelectRegion _value,
      $Res Function(_$ClientCreateEventSelectRegion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? regions = null,
  }) {
    return _then(_$ClientCreateEventSelectRegion(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region?,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region?>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $RegionCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value));
    });
  }
}

/// @nodoc

class _$ClientCreateEventSelectRegion implements ClientCreateEventSelectRegion {
  const _$ClientCreateEventSelectRegion(
      {required this.region, required final List<Region?> regions})
      : _regions = regions;

  @override
  final Region? region;
  final List<Region?> _regions;
  @override
  List<Region?> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  String toString() {
    return 'ClientCreateEvent.selectRegion(region: $region, regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientCreateEventSelectRegion &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, region, const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientCreateEventSelectRegionCopyWith<_$ClientCreateEventSelectRegion>
      get copyWith => __$$ClientCreateEventSelectRegionCopyWithImpl<
          _$ClientCreateEventSelectRegion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client? client) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
  }) {
    return selectRegion(region, regions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client? client)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
  }) {
    return selectRegion?.call(region, regions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client? client)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    required TResult orElse(),
  }) {
    if (selectRegion != null) {
      return selectRegion(region, regions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientCreateEventInit value) init,
    required TResult Function(ClientCreateEventCreate value) create,
    required TResult Function(ClientCreateEventUpdate value) update,
    required TResult Function(ClientCreateEventSelectRegion value) selectRegion,
  }) {
    return selectRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateEventInit value)? init,
    TResult? Function(ClientCreateEventCreate value)? create,
    TResult? Function(ClientCreateEventUpdate value)? update,
    TResult? Function(ClientCreateEventSelectRegion value)? selectRegion,
  }) {
    return selectRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateEventInit value)? init,
    TResult Function(ClientCreateEventCreate value)? create,
    TResult Function(ClientCreateEventUpdate value)? update,
    TResult Function(ClientCreateEventSelectRegion value)? selectRegion,
    required TResult orElse(),
  }) {
    if (selectRegion != null) {
      return selectRegion(this);
    }
    return orElse();
  }
}

abstract class ClientCreateEventSelectRegion implements ClientCreateEvent {
  const factory ClientCreateEventSelectRegion(
      {required final Region? region,
      required final List<Region?> regions}) = _$ClientCreateEventSelectRegion;

  Region? get region;
  List<Region?> get regions;
  @JsonKey(ignore: true)
  _$$ClientCreateEventSelectRegionCopyWith<_$ClientCreateEventSelectRegion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientCreateSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Client client) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Client client)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Client client)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
    required TResult Function(_SuccessNotify value) successNotify,
    required TResult Function(_ClientCreated value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ClientCreated value)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ClientCreated value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCreateSRCopyWith<$Res> {
  factory $ClientCreateSRCopyWith(
          ClientCreateSR value, $Res Function(ClientCreateSR) then) =
      _$ClientCreateSRCopyWithImpl<$Res, ClientCreateSR>;
}

/// @nodoc
class _$ClientCreateSRCopyWithImpl<$Res, $Val extends ClientCreateSR>
    implements $ClientCreateSRCopyWith<$Res> {
  _$ClientCreateSRCopyWithImpl(this._value, this._then);

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
    extends _$ClientCreateSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
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
    return 'ClientCreateSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
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
    required TResult Function(Client client) created,
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
    TResult? Function(Client client)? created,
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
    TResult Function(Client client)? created,
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
    required TResult Function(_ClientCreated value) created,
  }) {
    return showDioError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ClientCreated value)? created,
  }) {
    return showDioError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ClientCreated value)? created,
    required TResult orElse(),
  }) {
    if (showDioError != null) {
      return showDioError(this);
    }
    return orElse();
  }
}

abstract class _ShowDioErrorSnackbar implements ClientCreateSR {
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
    extends _$ClientCreateSRCopyWithImpl<$Res, _$_SuccessNotify>
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
    return 'ClientCreateSR.successNotify(text: $text)';
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
    required TResult Function(Client client) created,
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
    TResult? Function(Client client)? created,
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
    TResult Function(Client client)? created,
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
    required TResult Function(_ClientCreated value) created,
  }) {
    return successNotify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ClientCreated value)? created,
  }) {
    return successNotify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ClientCreated value)? created,
    required TResult orElse(),
  }) {
    if (successNotify != null) {
      return successNotify(this);
    }
    return orElse();
  }
}

abstract class _SuccessNotify implements ClientCreateSR {
  const factory _SuccessNotify({required final String text}) = _$_SuccessNotify;

  String get text;
  @JsonKey(ignore: true)
  _$$_SuccessNotifyCopyWith<_$_SuccessNotify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClientCreatedCopyWith<$Res> {
  factory _$$_ClientCreatedCopyWith(
          _$_ClientCreated value, $Res Function(_$_ClientCreated) then) =
      __$$_ClientCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$_ClientCreatedCopyWithImpl<$Res>
    extends _$ClientCreateSRCopyWithImpl<$Res, _$_ClientCreated>
    implements _$$_ClientCreatedCopyWith<$Res> {
  __$$_ClientCreatedCopyWithImpl(
      _$_ClientCreated _value, $Res Function(_$_ClientCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$_ClientCreated(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc

class _$_ClientCreated implements _ClientCreated {
  const _$_ClientCreated({required this.client});

  @override
  final Client client;

  @override
  String toString() {
    return 'ClientCreateSR.created(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientCreated &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientCreatedCopyWith<_$_ClientCreated> get copyWith =>
      __$$_ClientCreatedCopyWithImpl<_$_ClientCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Client client) created,
  }) {
    return created(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Client client)? created,
  }) {
    return created?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Client client)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDioErrorSnackbar value) showDioError,
    required TResult Function(_SuccessNotify value) successNotify,
    required TResult Function(_ClientCreated value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult? Function(_SuccessNotify value)? successNotify,
    TResult? Function(_ClientCreated value)? created,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDioErrorSnackbar value)? showDioError,
    TResult Function(_SuccessNotify value)? successNotify,
    TResult Function(_ClientCreated value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _ClientCreated implements ClientCreateSR {
  const factory _ClientCreated({required final Client client}) =
      _$_ClientCreated;

  Client get client;
  @JsonKey(ignore: true)
  _$$_ClientCreatedCopyWith<_$_ClientCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientCreateStateEmpty value) empty,
    required TResult Function(ClientCreateStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateStateEmpty value)? empty,
    TResult? Function(ClientCreateStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateStateEmpty value)? empty,
    TResult Function(ClientCreateStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCreateStateCopyWith<$Res> {
  factory $ClientCreateStateCopyWith(
          ClientCreateState value, $Res Function(ClientCreateState) then) =
      _$ClientCreateStateCopyWithImpl<$Res, ClientCreateState>;
}

/// @nodoc
class _$ClientCreateStateCopyWithImpl<$Res, $Val extends ClientCreateState>
    implements $ClientCreateStateCopyWith<$Res> {
  _$ClientCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientCreateStateEmptyCopyWith<$Res> {
  factory _$$ClientCreateStateEmptyCopyWith(_$ClientCreateStateEmpty value,
          $Res Function(_$ClientCreateStateEmpty) then) =
      __$$ClientCreateStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientCreateStateEmptyCopyWithImpl<$Res>
    extends _$ClientCreateStateCopyWithImpl<$Res, _$ClientCreateStateEmpty>
    implements _$$ClientCreateStateEmptyCopyWith<$Res> {
  __$$ClientCreateStateEmptyCopyWithImpl(_$ClientCreateStateEmpty _value,
      $Res Function(_$ClientCreateStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientCreateStateEmpty extends ClientCreateStateEmpty {
  const _$ClientCreateStateEmpty() : super._();

  @override
  String toString() {
    return 'ClientCreateState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientCreateStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)
        data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)?
        data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)?
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
    required TResult Function(ClientCreateStateEmpty value) empty,
    required TResult Function(ClientCreateStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateStateEmpty value)? empty,
    TResult? Function(ClientCreateStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateStateEmpty value)? empty,
    TResult Function(ClientCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ClientCreateStateEmpty extends ClientCreateState {
  const factory ClientCreateStateEmpty() = _$ClientCreateStateEmpty;
  const ClientCreateStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$ClientCreateStateDataCopyWith<$Res> {
  factory _$$ClientCreateStateDataCopyWith(_$ClientCreateStateData value,
          $Res Function(_$ClientCreateStateData) then) =
      __$$ClientCreateStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      GlobalKey<FormState> formKey,
      TextEditingController firstName,
      TextEditingController lastName,
      TextEditingController surName,
      TextEditingController phone,
      TextEditingController phone2,
      TextEditingController description,
      Region? region,
      List<Region?> regions,
      Client? client});

  $RegionCopyWith<$Res>? get region;
  $ClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$ClientCreateStateDataCopyWithImpl<$Res>
    extends _$ClientCreateStateCopyWithImpl<$Res, _$ClientCreateStateData>
    implements _$$ClientCreateStateDataCopyWith<$Res> {
  __$$ClientCreateStateDataCopyWithImpl(_$ClientCreateStateData _value,
      $Res Function(_$ClientCreateStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formKey = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? surName = null,
    Object? phone = null,
    Object? phone2 = null,
    Object? description = null,
    Object? region = freezed,
    Object? regions = null,
    Object? client = freezed,
  }) {
    return _then(_$ClientCreateStateData(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phone2: null == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region?,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region?>,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $RegionCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc

class _$ClientCreateStateData extends ClientCreateStateData {
  const _$ClientCreateStateData(
      {required this.isLoading,
      required this.formKey,
      required this.firstName,
      required this.lastName,
      required this.surName,
      required this.phone,
      required this.phone2,
      required this.description,
      required this.region,
      required final List<Region?> regions,
      required this.client})
      : _regions = regions,
        super._();

  @override
  final bool isLoading;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final TextEditingController firstName;
  @override
  final TextEditingController lastName;
  @override
  final TextEditingController surName;
  @override
  final TextEditingController phone;
  @override
  final TextEditingController phone2;
  @override
  final TextEditingController description;
  @override
  final Region? region;
  final List<Region?> _regions;
  @override
  List<Region?> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  final Client? client;

  @override
  String toString() {
    return 'ClientCreateState.data(isLoading: $isLoading, formKey: $formKey, firstName: $firstName, lastName: $lastName, surName: $surName, phone: $phone, phone2: $phone2, description: $description, region: $region, regions: $regions, client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientCreateStateData &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.surName, surName) || other.surName == surName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      formKey,
      firstName,
      lastName,
      surName,
      phone,
      phone2,
      description,
      region,
      const DeepCollectionEquality().hash(_regions),
      client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientCreateStateDataCopyWith<_$ClientCreateStateData> get copyWith =>
      __$$ClientCreateStateDataCopyWithImpl<_$ClientCreateStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)
        data,
  }) {
    return data(isLoading, formKey, firstName, lastName, surName, phone, phone2,
        description, region, regions, client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)?
        data,
  }) {
    return data?.call(isLoading, formKey, firstName, lastName, surName, phone,
        phone2, description, region, regions, client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController firstName,
            TextEditingController lastName,
            TextEditingController surName,
            TextEditingController phone,
            TextEditingController phone2,
            TextEditingController description,
            Region? region,
            List<Region?> regions,
            Client? client)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, formKey, firstName, lastName, surName, phone,
          phone2, description, region, regions, client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientCreateStateEmpty value) empty,
    required TResult Function(ClientCreateStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientCreateStateEmpty value)? empty,
    TResult? Function(ClientCreateStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientCreateStateEmpty value)? empty,
    TResult Function(ClientCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ClientCreateStateData extends ClientCreateState {
  const factory ClientCreateStateData(
      {required final bool isLoading,
      required final GlobalKey<FormState> formKey,
      required final TextEditingController firstName,
      required final TextEditingController lastName,
      required final TextEditingController surName,
      required final TextEditingController phone,
      required final TextEditingController phone2,
      required final TextEditingController description,
      required final Region? region,
      required final List<Region?> regions,
      required final Client? client}) = _$ClientCreateStateData;
  const ClientCreateStateData._() : super._();

  bool get isLoading;
  GlobalKey<FormState> get formKey;
  TextEditingController get firstName;
  TextEditingController get lastName;
  TextEditingController get surName;
  TextEditingController get phone;
  TextEditingController get phone2;
  TextEditingController get description;
  Region? get region;
  List<Region?> get regions;
  Client? get client;
  @JsonKey(ignore: true)
  _$$ClientCreateStateDataCopyWith<_$ClientCreateStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
