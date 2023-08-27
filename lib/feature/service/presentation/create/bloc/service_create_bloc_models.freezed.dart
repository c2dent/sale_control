// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_create_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Service? service) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
    required TResult Function(ServiceType? type) selectType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Service? service)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
    TResult? Function(ServiceType? type)? selectType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Service? service)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    TResult Function(ServiceType? type)? selectType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateEventInit value) init,
    required TResult Function(ServiceCreateEventCreate value) create,
    required TResult Function(ServiceCreateEventUpdate value) update,
    required TResult Function(ServiceCreateEventSelectDate value) selectDate,
    required TResult Function(ServiceCreateEventSelectContractor value)
        selectContractor,
    required TResult Function(ServiceCreateEventSelectType value) selectType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateEventInit value)? init,
    TResult? Function(ServiceCreateEventCreate value)? create,
    TResult? Function(ServiceCreateEventUpdate value)? update,
    TResult? Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult? Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult? Function(ServiceCreateEventSelectType value)? selectType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateEventInit value)? init,
    TResult Function(ServiceCreateEventCreate value)? create,
    TResult Function(ServiceCreateEventUpdate value)? update,
    TResult Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult Function(ServiceCreateEventSelectType value)? selectType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCreateEventCopyWith<$Res> {
  factory $ServiceCreateEventCopyWith(
          ServiceCreateEvent value, $Res Function(ServiceCreateEvent) then) =
      _$ServiceCreateEventCopyWithImpl<$Res, ServiceCreateEvent>;
}

/// @nodoc
class _$ServiceCreateEventCopyWithImpl<$Res, $Val extends ServiceCreateEvent>
    implements $ServiceCreateEventCopyWith<$Res> {
  _$ServiceCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceCreateEventInitCopyWith<$Res> {
  factory _$$ServiceCreateEventInitCopyWith(_$ServiceCreateEventInit value,
          $Res Function(_$ServiceCreateEventInit) then) =
      __$$ServiceCreateEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({Service? service});

  $ServiceCopyWith<$Res>? get service;
}

/// @nodoc
class __$$ServiceCreateEventInitCopyWithImpl<$Res>
    extends _$ServiceCreateEventCopyWithImpl<$Res, _$ServiceCreateEventInit>
    implements _$$ServiceCreateEventInitCopyWith<$Res> {
  __$$ServiceCreateEventInitCopyWithImpl(_$ServiceCreateEventInit _value,
      $Res Function(_$ServiceCreateEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = freezed,
  }) {
    return _then(_$ServiceCreateEventInit(
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value));
    });
  }
}

/// @nodoc

class _$ServiceCreateEventInit implements ServiceCreateEventInit {
  const _$ServiceCreateEventInit({this.service});

  @override
  final Service? service;

  @override
  String toString() {
    return 'ServiceCreateEvent.init(service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateEventInit &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCreateEventInitCopyWith<_$ServiceCreateEventInit> get copyWith =>
      __$$ServiceCreateEventInitCopyWithImpl<_$ServiceCreateEventInit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Service? service) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
    required TResult Function(ServiceType? type) selectType,
  }) {
    return init(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Service? service)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
    TResult? Function(ServiceType? type)? selectType,
  }) {
    return init?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Service? service)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    TResult Function(ServiceType? type)? selectType,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateEventInit value) init,
    required TResult Function(ServiceCreateEventCreate value) create,
    required TResult Function(ServiceCreateEventUpdate value) update,
    required TResult Function(ServiceCreateEventSelectDate value) selectDate,
    required TResult Function(ServiceCreateEventSelectContractor value)
        selectContractor,
    required TResult Function(ServiceCreateEventSelectType value) selectType,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateEventInit value)? init,
    TResult? Function(ServiceCreateEventCreate value)? create,
    TResult? Function(ServiceCreateEventUpdate value)? update,
    TResult? Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult? Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult? Function(ServiceCreateEventSelectType value)? selectType,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateEventInit value)? init,
    TResult Function(ServiceCreateEventCreate value)? create,
    TResult Function(ServiceCreateEventUpdate value)? update,
    TResult Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult Function(ServiceCreateEventSelectType value)? selectType,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateEventInit implements ServiceCreateEvent {
  const factory ServiceCreateEventInit({final Service? service}) =
      _$ServiceCreateEventInit;

  Service? get service;
  @JsonKey(ignore: true)
  _$$ServiceCreateEventInitCopyWith<_$ServiceCreateEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceCreateEventCreateCopyWith<$Res> {
  factory _$$ServiceCreateEventCreateCopyWith(_$ServiceCreateEventCreate value,
          $Res Function(_$ServiceCreateEventCreate) then) =
      __$$ServiceCreateEventCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceCreateEventCreateCopyWithImpl<$Res>
    extends _$ServiceCreateEventCopyWithImpl<$Res, _$ServiceCreateEventCreate>
    implements _$$ServiceCreateEventCreateCopyWith<$Res> {
  __$$ServiceCreateEventCreateCopyWithImpl(_$ServiceCreateEventCreate _value,
      $Res Function(_$ServiceCreateEventCreate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceCreateEventCreate implements ServiceCreateEventCreate {
  const _$ServiceCreateEventCreate();

  @override
  String toString() {
    return 'ServiceCreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateEventCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Service? service) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
    required TResult Function(ServiceType? type) selectType,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Service? service)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
    TResult? Function(ServiceType? type)? selectType,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Service? service)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    TResult Function(ServiceType? type)? selectType,
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
    required TResult Function(ServiceCreateEventInit value) init,
    required TResult Function(ServiceCreateEventCreate value) create,
    required TResult Function(ServiceCreateEventUpdate value) update,
    required TResult Function(ServiceCreateEventSelectDate value) selectDate,
    required TResult Function(ServiceCreateEventSelectContractor value)
        selectContractor,
    required TResult Function(ServiceCreateEventSelectType value) selectType,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateEventInit value)? init,
    TResult? Function(ServiceCreateEventCreate value)? create,
    TResult? Function(ServiceCreateEventUpdate value)? update,
    TResult? Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult? Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult? Function(ServiceCreateEventSelectType value)? selectType,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateEventInit value)? init,
    TResult Function(ServiceCreateEventCreate value)? create,
    TResult Function(ServiceCreateEventUpdate value)? update,
    TResult Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult Function(ServiceCreateEventSelectType value)? selectType,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateEventCreate implements ServiceCreateEvent {
  const factory ServiceCreateEventCreate() = _$ServiceCreateEventCreate;
}

/// @nodoc
abstract class _$$ServiceCreateEventUpdateCopyWith<$Res> {
  factory _$$ServiceCreateEventUpdateCopyWith(_$ServiceCreateEventUpdate value,
          $Res Function(_$ServiceCreateEventUpdate) then) =
      __$$ServiceCreateEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceCreateEventUpdateCopyWithImpl<$Res>
    extends _$ServiceCreateEventCopyWithImpl<$Res, _$ServiceCreateEventUpdate>
    implements _$$ServiceCreateEventUpdateCopyWith<$Res> {
  __$$ServiceCreateEventUpdateCopyWithImpl(_$ServiceCreateEventUpdate _value,
      $Res Function(_$ServiceCreateEventUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceCreateEventUpdate implements ServiceCreateEventUpdate {
  const _$ServiceCreateEventUpdate();

  @override
  String toString() {
    return 'ServiceCreateEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Service? service) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
    required TResult Function(ServiceType? type) selectType,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Service? service)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
    TResult? Function(ServiceType? type)? selectType,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Service? service)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    TResult Function(ServiceType? type)? selectType,
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
    required TResult Function(ServiceCreateEventInit value) init,
    required TResult Function(ServiceCreateEventCreate value) create,
    required TResult Function(ServiceCreateEventUpdate value) update,
    required TResult Function(ServiceCreateEventSelectDate value) selectDate,
    required TResult Function(ServiceCreateEventSelectContractor value)
        selectContractor,
    required TResult Function(ServiceCreateEventSelectType value) selectType,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateEventInit value)? init,
    TResult? Function(ServiceCreateEventCreate value)? create,
    TResult? Function(ServiceCreateEventUpdate value)? update,
    TResult? Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult? Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult? Function(ServiceCreateEventSelectType value)? selectType,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateEventInit value)? init,
    TResult Function(ServiceCreateEventCreate value)? create,
    TResult Function(ServiceCreateEventUpdate value)? update,
    TResult Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult Function(ServiceCreateEventSelectType value)? selectType,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateEventUpdate implements ServiceCreateEvent {
  const factory ServiceCreateEventUpdate() = _$ServiceCreateEventUpdate;
}

/// @nodoc
abstract class _$$ServiceCreateEventSelectDateCopyWith<$Res> {
  factory _$$ServiceCreateEventSelectDateCopyWith(
          _$ServiceCreateEventSelectDate value,
          $Res Function(_$ServiceCreateEventSelectDate) then) =
      __$$ServiceCreateEventSelectDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$ServiceCreateEventSelectDateCopyWithImpl<$Res>
    extends _$ServiceCreateEventCopyWithImpl<$Res,
        _$ServiceCreateEventSelectDate>
    implements _$$ServiceCreateEventSelectDateCopyWith<$Res> {
  __$$ServiceCreateEventSelectDateCopyWithImpl(
      _$ServiceCreateEventSelectDate _value,
      $Res Function(_$ServiceCreateEventSelectDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ServiceCreateEventSelectDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ServiceCreateEventSelectDate implements ServiceCreateEventSelectDate {
  const _$ServiceCreateEventSelectDate({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ServiceCreateEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateEventSelectDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCreateEventSelectDateCopyWith<_$ServiceCreateEventSelectDate>
      get copyWith => __$$ServiceCreateEventSelectDateCopyWithImpl<
          _$ServiceCreateEventSelectDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Service? service) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
    required TResult Function(ServiceType? type) selectType,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Service? service)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
    TResult? Function(ServiceType? type)? selectType,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Service? service)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    TResult Function(ServiceType? type)? selectType,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateEventInit value) init,
    required TResult Function(ServiceCreateEventCreate value) create,
    required TResult Function(ServiceCreateEventUpdate value) update,
    required TResult Function(ServiceCreateEventSelectDate value) selectDate,
    required TResult Function(ServiceCreateEventSelectContractor value)
        selectContractor,
    required TResult Function(ServiceCreateEventSelectType value) selectType,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateEventInit value)? init,
    TResult? Function(ServiceCreateEventCreate value)? create,
    TResult? Function(ServiceCreateEventUpdate value)? update,
    TResult? Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult? Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult? Function(ServiceCreateEventSelectType value)? selectType,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateEventInit value)? init,
    TResult Function(ServiceCreateEventCreate value)? create,
    TResult Function(ServiceCreateEventUpdate value)? update,
    TResult Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult Function(ServiceCreateEventSelectType value)? selectType,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateEventSelectDate implements ServiceCreateEvent {
  const factory ServiceCreateEventSelectDate({required final DateTime date}) =
      _$ServiceCreateEventSelectDate;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$ServiceCreateEventSelectDateCopyWith<_$ServiceCreateEventSelectDate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceCreateEventSelectContractorCopyWith<$Res> {
  factory _$$ServiceCreateEventSelectContractorCopyWith(
          _$ServiceCreateEventSelectContractor value,
          $Res Function(_$ServiceCreateEventSelectContractor) then) =
      __$$ServiceCreateEventSelectContractorCopyWithImpl<$Res>;
  @useResult
  $Res call({Contract? contract});

  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$ServiceCreateEventSelectContractorCopyWithImpl<$Res>
    extends _$ServiceCreateEventCopyWithImpl<$Res,
        _$ServiceCreateEventSelectContractor>
    implements _$$ServiceCreateEventSelectContractorCopyWith<$Res> {
  __$$ServiceCreateEventSelectContractorCopyWithImpl(
      _$ServiceCreateEventSelectContractor _value,
      $Res Function(_$ServiceCreateEventSelectContractor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_$ServiceCreateEventSelectContractor(
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

class _$ServiceCreateEventSelectContractor
    implements ServiceCreateEventSelectContractor {
  const _$ServiceCreateEventSelectContractor({this.contract});

  @override
  final Contract? contract;

  @override
  String toString() {
    return 'ServiceCreateEvent.selectContractor(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateEventSelectContractor &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCreateEventSelectContractorCopyWith<
          _$ServiceCreateEventSelectContractor>
      get copyWith => __$$ServiceCreateEventSelectContractorCopyWithImpl<
          _$ServiceCreateEventSelectContractor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Service? service) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
    required TResult Function(ServiceType? type) selectType,
  }) {
    return selectContractor(contract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Service? service)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
    TResult? Function(ServiceType? type)? selectType,
  }) {
    return selectContractor?.call(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Service? service)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    TResult Function(ServiceType? type)? selectType,
    required TResult orElse(),
  }) {
    if (selectContractor != null) {
      return selectContractor(contract);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateEventInit value) init,
    required TResult Function(ServiceCreateEventCreate value) create,
    required TResult Function(ServiceCreateEventUpdate value) update,
    required TResult Function(ServiceCreateEventSelectDate value) selectDate,
    required TResult Function(ServiceCreateEventSelectContractor value)
        selectContractor,
    required TResult Function(ServiceCreateEventSelectType value) selectType,
  }) {
    return selectContractor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateEventInit value)? init,
    TResult? Function(ServiceCreateEventCreate value)? create,
    TResult? Function(ServiceCreateEventUpdate value)? update,
    TResult? Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult? Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult? Function(ServiceCreateEventSelectType value)? selectType,
  }) {
    return selectContractor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateEventInit value)? init,
    TResult Function(ServiceCreateEventCreate value)? create,
    TResult Function(ServiceCreateEventUpdate value)? update,
    TResult Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult Function(ServiceCreateEventSelectType value)? selectType,
    required TResult orElse(),
  }) {
    if (selectContractor != null) {
      return selectContractor(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateEventSelectContractor
    implements ServiceCreateEvent {
  const factory ServiceCreateEventSelectContractor({final Contract? contract}) =
      _$ServiceCreateEventSelectContractor;

  Contract? get contract;
  @JsonKey(ignore: true)
  _$$ServiceCreateEventSelectContractorCopyWith<
          _$ServiceCreateEventSelectContractor>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceCreateEventSelectTypeCopyWith<$Res> {
  factory _$$ServiceCreateEventSelectTypeCopyWith(
          _$ServiceCreateEventSelectType value,
          $Res Function(_$ServiceCreateEventSelectType) then) =
      __$$ServiceCreateEventSelectTypeCopyWithImpl<$Res>;
  @useResult
  $Res call({ServiceType? type});
}

/// @nodoc
class __$$ServiceCreateEventSelectTypeCopyWithImpl<$Res>
    extends _$ServiceCreateEventCopyWithImpl<$Res,
        _$ServiceCreateEventSelectType>
    implements _$$ServiceCreateEventSelectTypeCopyWith<$Res> {
  __$$ServiceCreateEventSelectTypeCopyWithImpl(
      _$ServiceCreateEventSelectType _value,
      $Res Function(_$ServiceCreateEventSelectType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$ServiceCreateEventSelectType(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
    ));
  }
}

/// @nodoc

class _$ServiceCreateEventSelectType implements ServiceCreateEventSelectType {
  const _$ServiceCreateEventSelectType({this.type});

  @override
  final ServiceType? type;

  @override
  String toString() {
    return 'ServiceCreateEvent.selectType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateEventSelectType &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCreateEventSelectTypeCopyWith<_$ServiceCreateEventSelectType>
      get copyWith => __$$ServiceCreateEventSelectTypeCopyWithImpl<
          _$ServiceCreateEventSelectType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Service? service) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
    required TResult Function(ServiceType? type) selectType,
  }) {
    return selectType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Service? service)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
    TResult? Function(ServiceType? type)? selectType,
  }) {
    return selectType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Service? service)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    TResult Function(ServiceType? type)? selectType,
    required TResult orElse(),
  }) {
    if (selectType != null) {
      return selectType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateEventInit value) init,
    required TResult Function(ServiceCreateEventCreate value) create,
    required TResult Function(ServiceCreateEventUpdate value) update,
    required TResult Function(ServiceCreateEventSelectDate value) selectDate,
    required TResult Function(ServiceCreateEventSelectContractor value)
        selectContractor,
    required TResult Function(ServiceCreateEventSelectType value) selectType,
  }) {
    return selectType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateEventInit value)? init,
    TResult? Function(ServiceCreateEventCreate value)? create,
    TResult? Function(ServiceCreateEventUpdate value)? update,
    TResult? Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult? Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult? Function(ServiceCreateEventSelectType value)? selectType,
  }) {
    return selectType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateEventInit value)? init,
    TResult Function(ServiceCreateEventCreate value)? create,
    TResult Function(ServiceCreateEventUpdate value)? update,
    TResult Function(ServiceCreateEventSelectDate value)? selectDate,
    TResult Function(ServiceCreateEventSelectContractor value)?
        selectContractor,
    TResult Function(ServiceCreateEventSelectType value)? selectType,
    required TResult orElse(),
  }) {
    if (selectType != null) {
      return selectType(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateEventSelectType implements ServiceCreateEvent {
  const factory ServiceCreateEventSelectType({final ServiceType? type}) =
      _$ServiceCreateEventSelectType;

  ServiceType? get type;
  @JsonKey(ignore: true)
  _$$ServiceCreateEventSelectTypeCopyWith<_$ServiceCreateEventSelectType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceCreateSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Service service) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Service service)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Service service)? created,
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
abstract class $ServiceCreateSRCopyWith<$Res> {
  factory $ServiceCreateSRCopyWith(
          ServiceCreateSR value, $Res Function(ServiceCreateSR) then) =
      _$ServiceCreateSRCopyWithImpl<$Res, ServiceCreateSR>;
}

/// @nodoc
class _$ServiceCreateSRCopyWithImpl<$Res, $Val extends ServiceCreateSR>
    implements $ServiceCreateSRCopyWith<$Res> {
  _$ServiceCreateSRCopyWithImpl(this._value, this._then);

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
    extends _$ServiceCreateSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
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
    return 'ServiceCreateSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
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
    required TResult Function(Service service) created,
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
    TResult? Function(Service service)? created,
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
    TResult Function(Service service)? created,
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

abstract class _ShowDioErrorSnackbar implements ServiceCreateSR {
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
    extends _$ServiceCreateSRCopyWithImpl<$Res, _$_SuccessNotify>
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
    return 'ServiceCreateSR.successNotify(text: $text)';
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
    required TResult Function(Service service) created,
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
    TResult? Function(Service service)? created,
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
    TResult Function(Service service)? created,
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

abstract class _SuccessNotify implements ServiceCreateSR {
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
  $Res call({Service service});

  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class __$$_ClientCreatedCopyWithImpl<$Res>
    extends _$ServiceCreateSRCopyWithImpl<$Res, _$_ClientCreated>
    implements _$$_ClientCreatedCopyWith<$Res> {
  __$$_ClientCreatedCopyWithImpl(
      _$_ClientCreated _value, $Res Function(_$_ClientCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$_ClientCreated(
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

class _$_ClientCreated implements _ClientCreated {
  const _$_ClientCreated({required this.service});

  @override
  final Service service;

  @override
  String toString() {
    return 'ServiceCreateSR.created(service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientCreated &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

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
    required TResult Function(Service service) created,
  }) {
    return created(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Service service)? created,
  }) {
    return created?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Service service)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(service);
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

abstract class _ClientCreated implements ServiceCreateSR {
  const factory _ClientCreated({required final Service service}) =
      _$_ClientCreated;

  Service get service;
  @JsonKey(ignore: true)
  _$$_ClientCreatedCopyWith<_$_ClientCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateStateEmpty value) empty,
    required TResult Function(ServiceCreateStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateStateEmpty value)? empty,
    TResult? Function(ServiceCreateStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateStateEmpty value)? empty,
    TResult Function(ServiceCreateStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCreateStateCopyWith<$Res> {
  factory $ServiceCreateStateCopyWith(
          ServiceCreateState value, $Res Function(ServiceCreateState) then) =
      _$ServiceCreateStateCopyWithImpl<$Res, ServiceCreateState>;
}

/// @nodoc
class _$ServiceCreateStateCopyWithImpl<$Res, $Val extends ServiceCreateState>
    implements $ServiceCreateStateCopyWith<$Res> {
  _$ServiceCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceCreateStateEmptyCopyWith<$Res> {
  factory _$$ServiceCreateStateEmptyCopyWith(_$ServiceCreateStateEmpty value,
          $Res Function(_$ServiceCreateStateEmpty) then) =
      __$$ServiceCreateStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceCreateStateEmptyCopyWithImpl<$Res>
    extends _$ServiceCreateStateCopyWithImpl<$Res, _$ServiceCreateStateEmpty>
    implements _$$ServiceCreateStateEmptyCopyWith<$Res> {
  __$$ServiceCreateStateEmptyCopyWithImpl(_$ServiceCreateStateEmpty _value,
      $Res Function(_$ServiceCreateStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceCreateStateEmpty extends ServiceCreateStateEmpty {
  const _$ServiceCreateStateEmpty() : super._();

  @override
  String toString() {
    return 'ServiceCreateState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateStateEmpty);
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
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)
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
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)?
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
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)?
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
    required TResult Function(ServiceCreateStateEmpty value) empty,
    required TResult Function(ServiceCreateStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateStateEmpty value)? empty,
    TResult? Function(ServiceCreateStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateStateEmpty value)? empty,
    TResult Function(ServiceCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateStateEmpty extends ServiceCreateState {
  const factory ServiceCreateStateEmpty() = _$ServiceCreateStateEmpty;
  const ServiceCreateStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$ServiceCreateStateDataCopyWith<$Res> {
  factory _$$ServiceCreateStateDataCopyWith(_$ServiceCreateStateData value,
          $Res Function(_$ServiceCreateStateData) then) =
      __$$ServiceCreateStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      GlobalKey<FormState> formKey,
      DateTime date,
      TextEditingController comment,
      TextEditingController amount,
      ServiceType? type,
      Contract? contract,
      Service? service});

  $ContractCopyWith<$Res>? get contract;
  $ServiceCopyWith<$Res>? get service;
}

/// @nodoc
class __$$ServiceCreateStateDataCopyWithImpl<$Res>
    extends _$ServiceCreateStateCopyWithImpl<$Res, _$ServiceCreateStateData>
    implements _$$ServiceCreateStateDataCopyWith<$Res> {
  __$$ServiceCreateStateDataCopyWithImpl(_$ServiceCreateStateData _value,
      $Res Function(_$ServiceCreateStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formKey = null,
    Object? date = null,
    Object? comment = null,
    Object? amount = null,
    Object? type = freezed,
    Object? contract = freezed,
    Object? service = freezed,
  }) {
    return _then(_$ServiceCreateStateData(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
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

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value));
    });
  }
}

/// @nodoc

class _$ServiceCreateStateData extends ServiceCreateStateData {
  const _$ServiceCreateStateData(
      {required this.isLoading,
      required this.formKey,
      required this.date,
      required this.comment,
      required this.amount,
      required this.type,
      required this.contract,
      required this.service})
      : super._();

  @override
  final bool isLoading;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final DateTime date;
  @override
  final TextEditingController comment;
  @override
  final TextEditingController amount;
  @override
  final ServiceType? type;
  @override
  final Contract? contract;
  @override
  final Service? service;

  @override
  String toString() {
    return 'ServiceCreateState.data(isLoading: $isLoading, formKey: $formKey, date: $date, comment: $comment, amount: $amount, type: $type, contract: $contract, service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateStateData &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, formKey, date,
      comment, amount, type, contract, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCreateStateDataCopyWith<_$ServiceCreateStateData> get copyWith =>
      __$$ServiceCreateStateDataCopyWithImpl<_$ServiceCreateStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)
        data,
  }) {
    return data(
        isLoading, formKey, date, comment, amount, type, contract, service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)?
        data,
  }) {
    return data?.call(
        isLoading, formKey, date, comment, amount, type, contract, service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            DateTime date,
            TextEditingController comment,
            TextEditingController amount,
            ServiceType? type,
            Contract? contract,
            Service? service)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          isLoading, formKey, date, comment, amount, type, contract, service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateStateEmpty value) empty,
    required TResult Function(ServiceCreateStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateStateEmpty value)? empty,
    TResult? Function(ServiceCreateStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateStateEmpty value)? empty,
    TResult Function(ServiceCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateStateData extends ServiceCreateState {
  const factory ServiceCreateStateData(
      {required final bool isLoading,
      required final GlobalKey<FormState> formKey,
      required final DateTime date,
      required final TextEditingController comment,
      required final TextEditingController amount,
      required final ServiceType? type,
      required final Contract? contract,
      required final Service? service}) = _$ServiceCreateStateData;
  const ServiceCreateStateData._() : super._();

  bool get isLoading;
  GlobalKey<FormState> get formKey;
  DateTime get date;
  TextEditingController get comment;
  TextEditingController get amount;
  ServiceType? get type;
  Contract? get contract;
  Service? get service;
  @JsonKey(ignore: true)
  _$$ServiceCreateStateDataCopyWith<_$ServiceCreateStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
