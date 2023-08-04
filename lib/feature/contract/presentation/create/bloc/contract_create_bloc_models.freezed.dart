// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_create_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContractCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractCreateEventCopyWith<$Res> {
  factory $ContractCreateEventCopyWith(
          ContractCreateEvent value, $Res Function(ContractCreateEvent) then) =
      _$ContractCreateEventCopyWithImpl<$Res, ContractCreateEvent>;
}

/// @nodoc
class _$ContractCreateEventCopyWithImpl<$Res, $Val extends ContractCreateEvent>
    implements $ContractCreateEventCopyWith<$Res> {
  _$ContractCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContractCreateEventInitCopyWith<$Res> {
  factory _$$ContractCreateEventInitCopyWith(_$ContractCreateEventInit value,
          $Res Function(_$ContractCreateEventInit) then) =
      __$$ContractCreateEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({Contract? contract});

  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$ContractCreateEventInitCopyWithImpl<$Res>
    extends _$ContractCreateEventCopyWithImpl<$Res, _$ContractCreateEventInit>
    implements _$$ContractCreateEventInitCopyWith<$Res> {
  __$$ContractCreateEventInitCopyWithImpl(_$ContractCreateEventInit _value,
      $Res Function(_$ContractCreateEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_$ContractCreateEventInit(
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractCopyWith<$Res>? get contract {
    if (_value.contract == null) {
      return null;
    }

    return $ContractCopyWith<$Res>(_value.contract!, (value) {
      return _then(_value.copyWith(contract: value));
    });
  }
}

/// @nodoc

class _$ContractCreateEventInit implements ContractCreateEventInit {
  const _$ContractCreateEventInit({this.contract});

  @override
  final Contract? contract;

  @override
  String toString() {
    return 'ContractCreateEvent.init(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateEventInit &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractCreateEventInitCopyWith<_$ContractCreateEventInit> get copyWith =>
      __$$ContractCreateEventInitCopyWithImpl<_$ContractCreateEventInit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) {
    return init(contract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) {
    return init?.call(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(contract);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ContractCreateEventInit implements ContractCreateEvent {
  const factory ContractCreateEventInit({final Contract? contract}) =
      _$ContractCreateEventInit;

  Contract? get contract;
  @JsonKey(ignore: true)
  _$$ContractCreateEventInitCopyWith<_$ContractCreateEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContractCreateEventCreateCopyWith<$Res> {
  factory _$$ContractCreateEventCreateCopyWith(
          _$ContractCreateEventCreate value,
          $Res Function(_$ContractCreateEventCreate) then) =
      __$$ContractCreateEventCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContractCreateEventCreateCopyWithImpl<$Res>
    extends _$ContractCreateEventCopyWithImpl<$Res, _$ContractCreateEventCreate>
    implements _$$ContractCreateEventCreateCopyWith<$Res> {
  __$$ContractCreateEventCreateCopyWithImpl(_$ContractCreateEventCreate _value,
      $Res Function(_$ContractCreateEventCreate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContractCreateEventCreate implements ContractCreateEventCreate {
  const _$ContractCreateEventCreate();

  @override
  String toString() {
    return 'ContractCreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateEventCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
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
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ContractCreateEventCreate implements ContractCreateEvent {
  const factory ContractCreateEventCreate() = _$ContractCreateEventCreate;
}

/// @nodoc
abstract class _$$ContractCreateEventUpdateCopyWith<$Res> {
  factory _$$ContractCreateEventUpdateCopyWith(
          _$ContractCreateEventUpdate value,
          $Res Function(_$ContractCreateEventUpdate) then) =
      __$$ContractCreateEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContractCreateEventUpdateCopyWithImpl<$Res>
    extends _$ContractCreateEventCopyWithImpl<$Res, _$ContractCreateEventUpdate>
    implements _$$ContractCreateEventUpdateCopyWith<$Res> {
  __$$ContractCreateEventUpdateCopyWithImpl(_$ContractCreateEventUpdate _value,
      $Res Function(_$ContractCreateEventUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContractCreateEventUpdate implements ContractCreateEventUpdate {
  const _$ContractCreateEventUpdate();

  @override
  String toString() {
    return 'ContractCreateEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
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
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ContractCreateEventUpdate implements ContractCreateEvent {
  const factory ContractCreateEventUpdate() = _$ContractCreateEventUpdate;
}

/// @nodoc
abstract class _$$ContractCreateEventSelectClientCopyWith<$Res> {
  factory _$$ContractCreateEventSelectClientCopyWith(
          _$ContractCreateEventSelectClient value,
          $Res Function(_$ContractCreateEventSelectClient) then) =
      __$$ContractCreateEventSelectClientCopyWithImpl<$Res>;
  @useResult
  $Res call({Client? client});

  $ClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$ContractCreateEventSelectClientCopyWithImpl<$Res>
    extends _$ContractCreateEventCopyWithImpl<$Res,
        _$ContractCreateEventSelectClient>
    implements _$$ContractCreateEventSelectClientCopyWith<$Res> {
  __$$ContractCreateEventSelectClientCopyWithImpl(
      _$ContractCreateEventSelectClient _value,
      $Res Function(_$ContractCreateEventSelectClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_$ContractCreateEventSelectClient(
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

class _$ContractCreateEventSelectClient
    implements ContractCreateEventSelectClient {
  const _$ContractCreateEventSelectClient({required this.client});

  @override
  final Client? client;

  @override
  String toString() {
    return 'ContractCreateEvent.selectClient(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateEventSelectClient &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractCreateEventSelectClientCopyWith<_$ContractCreateEventSelectClient>
      get copyWith => __$$ContractCreateEventSelectClientCopyWithImpl<
          _$ContractCreateEventSelectClient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) {
    return selectClient(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) {
    return selectClient?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
    required TResult orElse(),
  }) {
    if (selectClient != null) {
      return selectClient(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) {
    return selectClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) {
    return selectClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) {
    if (selectClient != null) {
      return selectClient(this);
    }
    return orElse();
  }
}

abstract class ContractCreateEventSelectClient implements ContractCreateEvent {
  const factory ContractCreateEventSelectClient(
      {required final Client? client}) = _$ContractCreateEventSelectClient;

  Client? get client;
  @JsonKey(ignore: true)
  _$$ContractCreateEventSelectClientCopyWith<_$ContractCreateEventSelectClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContractCreateEventSelectRegionCopyWith<$Res> {
  factory _$$ContractCreateEventSelectRegionCopyWith(
          _$ContractCreateEventSelectRegion value,
          $Res Function(_$ContractCreateEventSelectRegion) then) =
      __$$ContractCreateEventSelectRegionCopyWithImpl<$Res>;
  @useResult
  $Res call({Region? region, List<Region?> regions});

  $RegionCopyWith<$Res>? get region;
}

/// @nodoc
class __$$ContractCreateEventSelectRegionCopyWithImpl<$Res>
    extends _$ContractCreateEventCopyWithImpl<$Res,
        _$ContractCreateEventSelectRegion>
    implements _$$ContractCreateEventSelectRegionCopyWith<$Res> {
  __$$ContractCreateEventSelectRegionCopyWithImpl(
      _$ContractCreateEventSelectRegion _value,
      $Res Function(_$ContractCreateEventSelectRegion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? regions = null,
  }) {
    return _then(_$ContractCreateEventSelectRegion(
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

class _$ContractCreateEventSelectRegion
    implements ContractCreateEventSelectRegion {
  const _$ContractCreateEventSelectRegion(
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
    return 'ContractCreateEvent.selectRegion(region: $region, regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateEventSelectRegion &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, region, const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractCreateEventSelectRegionCopyWith<_$ContractCreateEventSelectRegion>
      get copyWith => __$$ContractCreateEventSelectRegionCopyWithImpl<
          _$ContractCreateEventSelectRegion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) {
    return selectRegion(region, regions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) {
    return selectRegion?.call(region, regions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
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
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) {
    return selectRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) {
    return selectRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) {
    if (selectRegion != null) {
      return selectRegion(this);
    }
    return orElse();
  }
}

abstract class ContractCreateEventSelectRegion implements ContractCreateEvent {
  const factory ContractCreateEventSelectRegion(
          {required final Region? region,
          required final List<Region?> regions}) =
      _$ContractCreateEventSelectRegion;

  Region? get region;
  List<Region?> get regions;
  @JsonKey(ignore: true)
  _$$ContractCreateEventSelectRegionCopyWith<_$ContractCreateEventSelectRegion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContractCreateEventSelectAdvertiserCopyWith<$Res> {
  factory _$$ContractCreateEventSelectAdvertiserCopyWith(
          _$ContractCreateEventSelectAdvertiser value,
          $Res Function(_$ContractCreateEventSelectAdvertiser) then) =
      __$$ContractCreateEventSelectAdvertiserCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee? employee});

  $EmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$ContractCreateEventSelectAdvertiserCopyWithImpl<$Res>
    extends _$ContractCreateEventCopyWithImpl<$Res,
        _$ContractCreateEventSelectAdvertiser>
    implements _$$ContractCreateEventSelectAdvertiserCopyWith<$Res> {
  __$$ContractCreateEventSelectAdvertiserCopyWithImpl(
      _$ContractCreateEventSelectAdvertiser _value,
      $Res Function(_$ContractCreateEventSelectAdvertiser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = freezed,
  }) {
    return _then(_$ContractCreateEventSelectAdvertiser(
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$ContractCreateEventSelectAdvertiser
    implements ContractCreateEventSelectAdvertiser {
  const _$ContractCreateEventSelectAdvertiser({required this.employee});

  @override
  final Employee? employee;

  @override
  String toString() {
    return 'ContractCreateEvent.selectAdvertiser(employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateEventSelectAdvertiser &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractCreateEventSelectAdvertiserCopyWith<
          _$ContractCreateEventSelectAdvertiser>
      get copyWith => __$$ContractCreateEventSelectAdvertiserCopyWithImpl<
          _$ContractCreateEventSelectAdvertiser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) {
    return selectAdvertiser(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) {
    return selectAdvertiser?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
    required TResult orElse(),
  }) {
    if (selectAdvertiser != null) {
      return selectAdvertiser(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) {
    return selectAdvertiser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) {
    return selectAdvertiser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) {
    if (selectAdvertiser != null) {
      return selectAdvertiser(this);
    }
    return orElse();
  }
}

abstract class ContractCreateEventSelectAdvertiser
    implements ContractCreateEvent {
  const factory ContractCreateEventSelectAdvertiser(
          {required final Employee? employee}) =
      _$ContractCreateEventSelectAdvertiser;

  Employee? get employee;
  @JsonKey(ignore: true)
  _$$ContractCreateEventSelectAdvertiserCopyWith<
          _$ContractCreateEventSelectAdvertiser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContractCreateEventSetupDateCopyWith<$Res> {
  factory _$$ContractCreateEventSetupDateCopyWith(
          _$ContractCreateEventSetupDate value,
          $Res Function(_$ContractCreateEventSetupDate) then) =
      __$$ContractCreateEventSetupDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$ContractCreateEventSetupDateCopyWithImpl<$Res>
    extends _$ContractCreateEventCopyWithImpl<$Res,
        _$ContractCreateEventSetupDate>
    implements _$$ContractCreateEventSetupDateCopyWith<$Res> {
  __$$ContractCreateEventSetupDateCopyWithImpl(
      _$ContractCreateEventSetupDate _value,
      $Res Function(_$ContractCreateEventSetupDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ContractCreateEventSetupDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ContractCreateEventSetupDate implements ContractCreateEventSetupDate {
  const _$ContractCreateEventSetupDate({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ContractCreateEvent.setupDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateEventSetupDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractCreateEventSetupDateCopyWith<_$ContractCreateEventSetupDate>
      get copyWith => __$$ContractCreateEventSetupDateCopyWithImpl<
          _$ContractCreateEventSetupDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contract? contract) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Client? client) selectClient,
    required TResult Function(Region? region, List<Region?> regions)
        selectRegion,
    required TResult Function(Employee? employee) selectAdvertiser,
    required TResult Function(DateTime date) setupDate,
  }) {
    return setupDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contract? contract)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Client? client)? selectClient,
    TResult? Function(Region? region, List<Region?> regions)? selectRegion,
    TResult? Function(Employee? employee)? selectAdvertiser,
    TResult? Function(DateTime date)? setupDate,
  }) {
    return setupDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contract? contract)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Client? client)? selectClient,
    TResult Function(Region? region, List<Region?> regions)? selectRegion,
    TResult Function(Employee? employee)? selectAdvertiser,
    TResult Function(DateTime date)? setupDate,
    required TResult orElse(),
  }) {
    if (setupDate != null) {
      return setupDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractCreateEventInit value) init,
    required TResult Function(ContractCreateEventCreate value) create,
    required TResult Function(ContractCreateEventUpdate value) update,
    required TResult Function(ContractCreateEventSelectClient value)
        selectClient,
    required TResult Function(ContractCreateEventSelectRegion value)
        selectRegion,
    required TResult Function(ContractCreateEventSelectAdvertiser value)
        selectAdvertiser,
    required TResult Function(ContractCreateEventSetupDate value) setupDate,
  }) {
    return setupDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateEventInit value)? init,
    TResult? Function(ContractCreateEventCreate value)? create,
    TResult? Function(ContractCreateEventUpdate value)? update,
    TResult? Function(ContractCreateEventSelectClient value)? selectClient,
    TResult? Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult? Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult? Function(ContractCreateEventSetupDate value)? setupDate,
  }) {
    return setupDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateEventInit value)? init,
    TResult Function(ContractCreateEventCreate value)? create,
    TResult Function(ContractCreateEventUpdate value)? update,
    TResult Function(ContractCreateEventSelectClient value)? selectClient,
    TResult Function(ContractCreateEventSelectRegion value)? selectRegion,
    TResult Function(ContractCreateEventSelectAdvertiser value)?
        selectAdvertiser,
    TResult Function(ContractCreateEventSetupDate value)? setupDate,
    required TResult orElse(),
  }) {
    if (setupDate != null) {
      return setupDate(this);
    }
    return orElse();
  }
}

abstract class ContractCreateEventSetupDate implements ContractCreateEvent {
  const factory ContractCreateEventSetupDate({required final DateTime date}) =
      _$ContractCreateEventSetupDate;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$ContractCreateEventSetupDateCopyWith<_$ContractCreateEventSetupDate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContractCreateSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Contract contract) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Contract contract)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Contract contract)? created,
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
abstract class $ContractCreateSRCopyWith<$Res> {
  factory $ContractCreateSRCopyWith(
          ContractCreateSR value, $Res Function(ContractCreateSR) then) =
      _$ContractCreateSRCopyWithImpl<$Res, ContractCreateSR>;
}

/// @nodoc
class _$ContractCreateSRCopyWithImpl<$Res, $Val extends ContractCreateSR>
    implements $ContractCreateSRCopyWith<$Res> {
  _$ContractCreateSRCopyWithImpl(this._value, this._then);

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
    extends _$ContractCreateSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
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
    return 'ContractCreateSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
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
    required TResult Function(Contract contract) created,
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
    TResult? Function(Contract contract)? created,
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
    TResult Function(Contract contract)? created,
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

abstract class _ShowDioErrorSnackbar implements ContractCreateSR {
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
    extends _$ContractCreateSRCopyWithImpl<$Res, _$_SuccessNotify>
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
    return 'ContractCreateSR.successNotify(text: $text)';
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
    required TResult Function(Contract contract) created,
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
    TResult? Function(Contract contract)? created,
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
    TResult Function(Contract contract)? created,
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

abstract class _SuccessNotify implements ContractCreateSR {
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
  $Res call({Contract contract});

  $ContractCopyWith<$Res> get contract;
}

/// @nodoc
class __$$_ClientCreatedCopyWithImpl<$Res>
    extends _$ContractCreateSRCopyWithImpl<$Res, _$_ClientCreated>
    implements _$$_ClientCreatedCopyWith<$Res> {
  __$$_ClientCreatedCopyWithImpl(
      _$_ClientCreated _value, $Res Function(_$_ClientCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = null,
  }) {
    return _then(_$_ClientCreated(
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractCopyWith<$Res> get contract {
    return $ContractCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value));
    });
  }
}

/// @nodoc

class _$_ClientCreated implements _ClientCreated {
  const _$_ClientCreated({required this.contract});

  @override
  final Contract contract;

  @override
  String toString() {
    return 'ContractCreateSR.created(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientCreated &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract);

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
    required TResult Function(Contract contract) created,
  }) {
    return created(contract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Contract contract)? created,
  }) {
    return created?.call(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Contract contract)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(contract);
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

abstract class _ClientCreated implements ContractCreateSR {
  const factory _ClientCreated({required final Contract contract}) =
      _$_ClientCreated;

  Contract get contract;
  @JsonKey(ignore: true)
  _$$_ClientCreatedCopyWith<_$_ClientCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContractCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractCreateStateEmpty value) empty,
    required TResult Function(ContractCreateStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateStateEmpty value)? empty,
    TResult? Function(ContractCreateStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateStateEmpty value)? empty,
    TResult Function(ContractCreateStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractCreateStateCopyWith<$Res> {
  factory $ContractCreateStateCopyWith(
          ContractCreateState value, $Res Function(ContractCreateState) then) =
      _$ContractCreateStateCopyWithImpl<$Res, ContractCreateState>;
}

/// @nodoc
class _$ContractCreateStateCopyWithImpl<$Res, $Val extends ContractCreateState>
    implements $ContractCreateStateCopyWith<$Res> {
  _$ContractCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContractCreateStateEmptyCopyWith<$Res> {
  factory _$$ContractCreateStateEmptyCopyWith(_$ContractCreateStateEmpty value,
          $Res Function(_$ContractCreateStateEmpty) then) =
      __$$ContractCreateStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContractCreateStateEmptyCopyWithImpl<$Res>
    extends _$ContractCreateStateCopyWithImpl<$Res, _$ContractCreateStateEmpty>
    implements _$$ContractCreateStateEmptyCopyWith<$Res> {
  __$$ContractCreateStateEmptyCopyWithImpl(_$ContractCreateStateEmpty _value,
      $Res Function(_$ContractCreateStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContractCreateStateEmpty extends ContractCreateStateEmpty {
  const _$ContractCreateStateEmpty() : super._();

  @override
  String toString() {
    return 'ContractCreateState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateStateEmpty);
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
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)
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
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)?
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
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)?
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
    required TResult Function(ContractCreateStateEmpty value) empty,
    required TResult Function(ContractCreateStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateStateEmpty value)? empty,
    TResult? Function(ContractCreateStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateStateEmpty value)? empty,
    TResult Function(ContractCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ContractCreateStateEmpty extends ContractCreateState {
  const factory ContractCreateStateEmpty() = _$ContractCreateStateEmpty;
  const ContractCreateStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$ContractCreateStateDataCopyWith<$Res> {
  factory _$$ContractCreateStateDataCopyWith(_$ContractCreateStateData value,
          $Res Function(_$ContractCreateStateData) then) =
      __$$ContractCreateStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      GlobalKey<FormState> formKey,
      Region? region,
      List<Region?> regions,
      Client? client,
      Employee? advertiser,
      TextEditingController monthCount,
      TextEditingController dueDateOnMonth,
      TextEditingController priceAmount,
      TextEditingController startContribution,
      TextEditingController filterCount,
      DateTime setupDate,
      Contract? contract});

  $RegionCopyWith<$Res>? get region;
  $ClientCopyWith<$Res>? get client;
  $EmployeeCopyWith<$Res>? get advertiser;
  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$ContractCreateStateDataCopyWithImpl<$Res>
    extends _$ContractCreateStateCopyWithImpl<$Res, _$ContractCreateStateData>
    implements _$$ContractCreateStateDataCopyWith<$Res> {
  __$$ContractCreateStateDataCopyWithImpl(_$ContractCreateStateData _value,
      $Res Function(_$ContractCreateStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formKey = null,
    Object? region = freezed,
    Object? regions = null,
    Object? client = freezed,
    Object? advertiser = freezed,
    Object? monthCount = null,
    Object? dueDateOnMonth = null,
    Object? priceAmount = null,
    Object? startContribution = null,
    Object? filterCount = null,
    Object? setupDate = null,
    Object? contract = freezed,
  }) {
    return _then(_$ContractCreateStateData(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
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
      advertiser: freezed == advertiser
          ? _value.advertiser
          : advertiser // ignore: cast_nullable_to_non_nullable
              as Employee?,
      monthCount: null == monthCount
          ? _value.monthCount
          : monthCount // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      dueDateOnMonth: null == dueDateOnMonth
          ? _value.dueDateOnMonth
          : dueDateOnMonth // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      priceAmount: null == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      startContribution: null == startContribution
          ? _value.startContribution
          : startContribution // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      filterCount: null == filterCount
          ? _value.filterCount
          : filterCount // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      setupDate: null == setupDate
          ? _value.setupDate
          : setupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
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

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get advertiser {
    if (_value.advertiser == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.advertiser!, (value) {
      return _then(_value.copyWith(advertiser: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractCopyWith<$Res>? get contract {
    if (_value.contract == null) {
      return null;
    }

    return $ContractCopyWith<$Res>(_value.contract!, (value) {
      return _then(_value.copyWith(contract: value));
    });
  }
}

/// @nodoc

class _$ContractCreateStateData extends ContractCreateStateData {
  const _$ContractCreateStateData(
      {required this.isLoading,
      required this.formKey,
      required this.region,
      required final List<Region?> regions,
      required this.client,
      required this.advertiser,
      required this.monthCount,
      required this.dueDateOnMonth,
      required this.priceAmount,
      required this.startContribution,
      required this.filterCount,
      required this.setupDate,
      required this.contract})
      : _regions = regions,
        super._();

  @override
  final bool isLoading;
  @override
  final GlobalKey<FormState> formKey;
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
  final Employee? advertiser;
  @override
  final TextEditingController monthCount;
  @override
  final TextEditingController dueDateOnMonth;
  @override
  final TextEditingController priceAmount;
  @override
  final TextEditingController startContribution;
  @override
  final TextEditingController filterCount;
  @override
  final DateTime setupDate;
  @override
  final Contract? contract;

  @override
  String toString() {
    return 'ContractCreateState.data(isLoading: $isLoading, formKey: $formKey, region: $region, regions: $regions, client: $client, advertiser: $advertiser, monthCount: $monthCount, dueDateOnMonth: $dueDateOnMonth, priceAmount: $priceAmount, startContribution: $startContribution, filterCount: $filterCount, setupDate: $setupDate, contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCreateStateData &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.advertiser, advertiser) ||
                other.advertiser == advertiser) &&
            (identical(other.monthCount, monthCount) ||
                other.monthCount == monthCount) &&
            (identical(other.dueDateOnMonth, dueDateOnMonth) ||
                other.dueDateOnMonth == dueDateOnMonth) &&
            (identical(other.priceAmount, priceAmount) ||
                other.priceAmount == priceAmount) &&
            (identical(other.startContribution, startContribution) ||
                other.startContribution == startContribution) &&
            (identical(other.filterCount, filterCount) ||
                other.filterCount == filterCount) &&
            (identical(other.setupDate, setupDate) ||
                other.setupDate == setupDate) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      formKey,
      region,
      const DeepCollectionEquality().hash(_regions),
      client,
      advertiser,
      monthCount,
      dueDateOnMonth,
      priceAmount,
      startContribution,
      filterCount,
      setupDate,
      contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractCreateStateDataCopyWith<_$ContractCreateStateData> get copyWith =>
      __$$ContractCreateStateDataCopyWithImpl<_$ContractCreateStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)
        data,
  }) {
    return data(
        isLoading,
        formKey,
        region,
        regions,
        client,
        advertiser,
        monthCount,
        dueDateOnMonth,
        priceAmount,
        startContribution,
        filterCount,
        setupDate,
        contract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)?
        data,
  }) {
    return data?.call(
        isLoading,
        formKey,
        region,
        regions,
        client,
        advertiser,
        monthCount,
        dueDateOnMonth,
        priceAmount,
        startContribution,
        filterCount,
        setupDate,
        contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            Region? region,
            List<Region?> regions,
            Client? client,
            Employee? advertiser,
            TextEditingController monthCount,
            TextEditingController dueDateOnMonth,
            TextEditingController priceAmount,
            TextEditingController startContribution,
            TextEditingController filterCount,
            DateTime setupDate,
            Contract? contract)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          isLoading,
          formKey,
          region,
          regions,
          client,
          advertiser,
          monthCount,
          dueDateOnMonth,
          priceAmount,
          startContribution,
          filterCount,
          setupDate,
          contract);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractCreateStateEmpty value) empty,
    required TResult Function(ContractCreateStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractCreateStateEmpty value)? empty,
    TResult? Function(ContractCreateStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractCreateStateEmpty value)? empty,
    TResult Function(ContractCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ContractCreateStateData extends ContractCreateState {
  const factory ContractCreateStateData(
      {required final bool isLoading,
      required final GlobalKey<FormState> formKey,
      required final Region? region,
      required final List<Region?> regions,
      required final Client? client,
      required final Employee? advertiser,
      required final TextEditingController monthCount,
      required final TextEditingController dueDateOnMonth,
      required final TextEditingController priceAmount,
      required final TextEditingController startContribution,
      required final TextEditingController filterCount,
      required final DateTime setupDate,
      required final Contract? contract}) = _$ContractCreateStateData;
  const ContractCreateStateData._() : super._();

  bool get isLoading;
  GlobalKey<FormState> get formKey;
  Region? get region;
  List<Region?> get regions;
  Client? get client;
  Employee? get advertiser;
  TextEditingController get monthCount;
  TextEditingController get dueDateOnMonth;
  TextEditingController get priceAmount;
  TextEditingController get startContribution;
  TextEditingController get filterCount;
  DateTime get setupDate;
  Contract? get contract;
  @JsonKey(ignore: true)
  _$$ContractCreateStateDataCopyWith<_$ContractCreateStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
