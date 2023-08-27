// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_return_create_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContractReturnCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContractReturn? contractReturn) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContractReturn? contractReturn)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContractReturn? contractReturn)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractReturnCreateEventInit value) init,
    required TResult Function(ContractReturnCreateEventCreate value) create,
    required TResult Function(ContractReturnCreateEventUpdate value) update,
    required TResult Function(ContractReturntCreateEventSelectContract value)
        selectContract,
    required TResult Function(ContractReturnCreateEventSelectDate value)
        selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateEventInit value)? init,
    TResult? Function(ContractReturnCreateEventCreate value)? create,
    TResult? Function(ContractReturnCreateEventUpdate value)? update,
    TResult? Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult? Function(ContractReturnCreateEventSelectDate value)? selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateEventInit value)? init,
    TResult Function(ContractReturnCreateEventCreate value)? create,
    TResult Function(ContractReturnCreateEventUpdate value)? update,
    TResult Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult Function(ContractReturnCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractReturnCreateEventCopyWith<$Res> {
  factory $ContractReturnCreateEventCopyWith(ContractReturnCreateEvent value,
          $Res Function(ContractReturnCreateEvent) then) =
      _$ContractReturnCreateEventCopyWithImpl<$Res, ContractReturnCreateEvent>;
}

/// @nodoc
class _$ContractReturnCreateEventCopyWithImpl<$Res,
        $Val extends ContractReturnCreateEvent>
    implements $ContractReturnCreateEventCopyWith<$Res> {
  _$ContractReturnCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContractReturnCreateEventInitCopyWith<$Res> {
  factory _$$ContractReturnCreateEventInitCopyWith(
          _$ContractReturnCreateEventInit value,
          $Res Function(_$ContractReturnCreateEventInit) then) =
      __$$ContractReturnCreateEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({ContractReturn? contractReturn});

  $ContractReturnCopyWith<$Res>? get contractReturn;
}

/// @nodoc
class __$$ContractReturnCreateEventInitCopyWithImpl<$Res>
    extends _$ContractReturnCreateEventCopyWithImpl<$Res,
        _$ContractReturnCreateEventInit>
    implements _$$ContractReturnCreateEventInitCopyWith<$Res> {
  __$$ContractReturnCreateEventInitCopyWithImpl(
      _$ContractReturnCreateEventInit _value,
      $Res Function(_$ContractReturnCreateEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractReturn = freezed,
  }) {
    return _then(_$ContractReturnCreateEventInit(
      contractReturn: freezed == contractReturn
          ? _value.contractReturn
          : contractReturn // ignore: cast_nullable_to_non_nullable
              as ContractReturn?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractReturnCopyWith<$Res>? get contractReturn {
    if (_value.contractReturn == null) {
      return null;
    }

    return $ContractReturnCopyWith<$Res>(_value.contractReturn!, (value) {
      return _then(_value.copyWith(contractReturn: value));
    });
  }
}

/// @nodoc

class _$ContractReturnCreateEventInit implements ContractReturnCreateEventInit {
  const _$ContractReturnCreateEventInit({this.contractReturn});

  @override
  final ContractReturn? contractReturn;

  @override
  String toString() {
    return 'ContractReturnCreateEvent.init(contractReturn: $contractReturn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractReturnCreateEventInit &&
            (identical(other.contractReturn, contractReturn) ||
                other.contractReturn == contractReturn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contractReturn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractReturnCreateEventInitCopyWith<_$ContractReturnCreateEventInit>
      get copyWith => __$$ContractReturnCreateEventInitCopyWithImpl<
          _$ContractReturnCreateEventInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContractReturn? contractReturn) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) {
    return init(contractReturn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContractReturn? contractReturn)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return init?.call(contractReturn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContractReturn? contractReturn)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(contractReturn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractReturnCreateEventInit value) init,
    required TResult Function(ContractReturnCreateEventCreate value) create,
    required TResult Function(ContractReturnCreateEventUpdate value) update,
    required TResult Function(ContractReturntCreateEventSelectContract value)
        selectContract,
    required TResult Function(ContractReturnCreateEventSelectDate value)
        selectDate,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateEventInit value)? init,
    TResult? Function(ContractReturnCreateEventCreate value)? create,
    TResult? Function(ContractReturnCreateEventUpdate value)? update,
    TResult? Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult? Function(ContractReturnCreateEventSelectDate value)? selectDate,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateEventInit value)? init,
    TResult Function(ContractReturnCreateEventCreate value)? create,
    TResult Function(ContractReturnCreateEventUpdate value)? update,
    TResult Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult Function(ContractReturnCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ContractReturnCreateEventInit
    implements ContractReturnCreateEvent {
  const factory ContractReturnCreateEventInit(
      {final ContractReturn? contractReturn}) = _$ContractReturnCreateEventInit;

  ContractReturn? get contractReturn;
  @JsonKey(ignore: true)
  _$$ContractReturnCreateEventInitCopyWith<_$ContractReturnCreateEventInit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContractReturnCreateEventCreateCopyWith<$Res> {
  factory _$$ContractReturnCreateEventCreateCopyWith(
          _$ContractReturnCreateEventCreate value,
          $Res Function(_$ContractReturnCreateEventCreate) then) =
      __$$ContractReturnCreateEventCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContractReturnCreateEventCreateCopyWithImpl<$Res>
    extends _$ContractReturnCreateEventCopyWithImpl<$Res,
        _$ContractReturnCreateEventCreate>
    implements _$$ContractReturnCreateEventCreateCopyWith<$Res> {
  __$$ContractReturnCreateEventCreateCopyWithImpl(
      _$ContractReturnCreateEventCreate _value,
      $Res Function(_$ContractReturnCreateEventCreate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContractReturnCreateEventCreate
    implements ContractReturnCreateEventCreate {
  const _$ContractReturnCreateEventCreate();

  @override
  String toString() {
    return 'ContractReturnCreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractReturnCreateEventCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContractReturn? contractReturn) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContractReturn? contractReturn)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContractReturn? contractReturn)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
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
    required TResult Function(ContractReturnCreateEventInit value) init,
    required TResult Function(ContractReturnCreateEventCreate value) create,
    required TResult Function(ContractReturnCreateEventUpdate value) update,
    required TResult Function(ContractReturntCreateEventSelectContract value)
        selectContract,
    required TResult Function(ContractReturnCreateEventSelectDate value)
        selectDate,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateEventInit value)? init,
    TResult? Function(ContractReturnCreateEventCreate value)? create,
    TResult? Function(ContractReturnCreateEventUpdate value)? update,
    TResult? Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult? Function(ContractReturnCreateEventSelectDate value)? selectDate,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateEventInit value)? init,
    TResult Function(ContractReturnCreateEventCreate value)? create,
    TResult Function(ContractReturnCreateEventUpdate value)? update,
    TResult Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult Function(ContractReturnCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ContractReturnCreateEventCreate
    implements ContractReturnCreateEvent {
  const factory ContractReturnCreateEventCreate() =
      _$ContractReturnCreateEventCreate;
}

/// @nodoc
abstract class _$$ContractReturnCreateEventUpdateCopyWith<$Res> {
  factory _$$ContractReturnCreateEventUpdateCopyWith(
          _$ContractReturnCreateEventUpdate value,
          $Res Function(_$ContractReturnCreateEventUpdate) then) =
      __$$ContractReturnCreateEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContractReturnCreateEventUpdateCopyWithImpl<$Res>
    extends _$ContractReturnCreateEventCopyWithImpl<$Res,
        _$ContractReturnCreateEventUpdate>
    implements _$$ContractReturnCreateEventUpdateCopyWith<$Res> {
  __$$ContractReturnCreateEventUpdateCopyWithImpl(
      _$ContractReturnCreateEventUpdate _value,
      $Res Function(_$ContractReturnCreateEventUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContractReturnCreateEventUpdate
    implements ContractReturnCreateEventUpdate {
  const _$ContractReturnCreateEventUpdate();

  @override
  String toString() {
    return 'ContractReturnCreateEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractReturnCreateEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContractReturn? contractReturn) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContractReturn? contractReturn)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContractReturn? contractReturn)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
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
    required TResult Function(ContractReturnCreateEventInit value) init,
    required TResult Function(ContractReturnCreateEventCreate value) create,
    required TResult Function(ContractReturnCreateEventUpdate value) update,
    required TResult Function(ContractReturntCreateEventSelectContract value)
        selectContract,
    required TResult Function(ContractReturnCreateEventSelectDate value)
        selectDate,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateEventInit value)? init,
    TResult? Function(ContractReturnCreateEventCreate value)? create,
    TResult? Function(ContractReturnCreateEventUpdate value)? update,
    TResult? Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult? Function(ContractReturnCreateEventSelectDate value)? selectDate,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateEventInit value)? init,
    TResult Function(ContractReturnCreateEventCreate value)? create,
    TResult Function(ContractReturnCreateEventUpdate value)? update,
    TResult Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult Function(ContractReturnCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ContractReturnCreateEventUpdate
    implements ContractReturnCreateEvent {
  const factory ContractReturnCreateEventUpdate() =
      _$ContractReturnCreateEventUpdate;
}

/// @nodoc
abstract class _$$ContractReturntCreateEventSelectContractCopyWith<$Res> {
  factory _$$ContractReturntCreateEventSelectContractCopyWith(
          _$ContractReturntCreateEventSelectContract value,
          $Res Function(_$ContractReturntCreateEventSelectContract) then) =
      __$$ContractReturntCreateEventSelectContractCopyWithImpl<$Res>;
  @useResult
  $Res call({Contract? contract});

  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$ContractReturntCreateEventSelectContractCopyWithImpl<$Res>
    extends _$ContractReturnCreateEventCopyWithImpl<$Res,
        _$ContractReturntCreateEventSelectContract>
    implements _$$ContractReturntCreateEventSelectContractCopyWith<$Res> {
  __$$ContractReturntCreateEventSelectContractCopyWithImpl(
      _$ContractReturntCreateEventSelectContract _value,
      $Res Function(_$ContractReturntCreateEventSelectContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_$ContractReturntCreateEventSelectContract(
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

class _$ContractReturntCreateEventSelectContract
    implements ContractReturntCreateEventSelectContract {
  const _$ContractReturntCreateEventSelectContract({required this.contract});

  @override
  final Contract? contract;

  @override
  String toString() {
    return 'ContractReturnCreateEvent.selectContract(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractReturntCreateEventSelectContract &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractReturntCreateEventSelectContractCopyWith<
          _$ContractReturntCreateEventSelectContract>
      get copyWith => __$$ContractReturntCreateEventSelectContractCopyWithImpl<
          _$ContractReturntCreateEventSelectContract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContractReturn? contractReturn) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) {
    return selectContract(contract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContractReturn? contractReturn)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return selectContract?.call(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContractReturn? contractReturn)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (selectContract != null) {
      return selectContract(contract);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractReturnCreateEventInit value) init,
    required TResult Function(ContractReturnCreateEventCreate value) create,
    required TResult Function(ContractReturnCreateEventUpdate value) update,
    required TResult Function(ContractReturntCreateEventSelectContract value)
        selectContract,
    required TResult Function(ContractReturnCreateEventSelectDate value)
        selectDate,
  }) {
    return selectContract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateEventInit value)? init,
    TResult? Function(ContractReturnCreateEventCreate value)? create,
    TResult? Function(ContractReturnCreateEventUpdate value)? update,
    TResult? Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult? Function(ContractReturnCreateEventSelectDate value)? selectDate,
  }) {
    return selectContract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateEventInit value)? init,
    TResult Function(ContractReturnCreateEventCreate value)? create,
    TResult Function(ContractReturnCreateEventUpdate value)? update,
    TResult Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult Function(ContractReturnCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (selectContract != null) {
      return selectContract(this);
    }
    return orElse();
  }
}

abstract class ContractReturntCreateEventSelectContract
    implements ContractReturnCreateEvent {
  const factory ContractReturntCreateEventSelectContract(
          {required final Contract? contract}) =
      _$ContractReturntCreateEventSelectContract;

  Contract? get contract;
  @JsonKey(ignore: true)
  _$$ContractReturntCreateEventSelectContractCopyWith<
          _$ContractReturntCreateEventSelectContract>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContractReturnCreateEventSelectDateCopyWith<$Res> {
  factory _$$ContractReturnCreateEventSelectDateCopyWith(
          _$ContractReturnCreateEventSelectDate value,
          $Res Function(_$ContractReturnCreateEventSelectDate) then) =
      __$$ContractReturnCreateEventSelectDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$ContractReturnCreateEventSelectDateCopyWithImpl<$Res>
    extends _$ContractReturnCreateEventCopyWithImpl<$Res,
        _$ContractReturnCreateEventSelectDate>
    implements _$$ContractReturnCreateEventSelectDateCopyWith<$Res> {
  __$$ContractReturnCreateEventSelectDateCopyWithImpl(
      _$ContractReturnCreateEventSelectDate _value,
      $Res Function(_$ContractReturnCreateEventSelectDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ContractReturnCreateEventSelectDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ContractReturnCreateEventSelectDate
    implements ContractReturnCreateEventSelectDate {
  const _$ContractReturnCreateEventSelectDate({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ContractReturnCreateEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractReturnCreateEventSelectDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractReturnCreateEventSelectDateCopyWith<
          _$ContractReturnCreateEventSelectDate>
      get copyWith => __$$ContractReturnCreateEventSelectDateCopyWithImpl<
          _$ContractReturnCreateEventSelectDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContractReturn? contractReturn) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContractReturn? contractReturn)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContractReturn? contractReturn)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
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
    required TResult Function(ContractReturnCreateEventInit value) init,
    required TResult Function(ContractReturnCreateEventCreate value) create,
    required TResult Function(ContractReturnCreateEventUpdate value) update,
    required TResult Function(ContractReturntCreateEventSelectContract value)
        selectContract,
    required TResult Function(ContractReturnCreateEventSelectDate value)
        selectDate,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateEventInit value)? init,
    TResult? Function(ContractReturnCreateEventCreate value)? create,
    TResult? Function(ContractReturnCreateEventUpdate value)? update,
    TResult? Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult? Function(ContractReturnCreateEventSelectDate value)? selectDate,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateEventInit value)? init,
    TResult Function(ContractReturnCreateEventCreate value)? create,
    TResult Function(ContractReturnCreateEventUpdate value)? update,
    TResult Function(ContractReturntCreateEventSelectContract value)?
        selectContract,
    TResult Function(ContractReturnCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class ContractReturnCreateEventSelectDate
    implements ContractReturnCreateEvent {
  const factory ContractReturnCreateEventSelectDate(
      {required final DateTime date}) = _$ContractReturnCreateEventSelectDate;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$ContractReturnCreateEventSelectDateCopyWith<
          _$ContractReturnCreateEventSelectDate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContractReturnCreateSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(ContractReturn contractReturn) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(ContractReturn contractReturn)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(ContractReturn contractReturn)? created,
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
abstract class $ContractReturnCreateSRCopyWith<$Res> {
  factory $ContractReturnCreateSRCopyWith(ContractReturnCreateSR value,
          $Res Function(ContractReturnCreateSR) then) =
      _$ContractReturnCreateSRCopyWithImpl<$Res, ContractReturnCreateSR>;
}

/// @nodoc
class _$ContractReturnCreateSRCopyWithImpl<$Res,
        $Val extends ContractReturnCreateSR>
    implements $ContractReturnCreateSRCopyWith<$Res> {
  _$ContractReturnCreateSRCopyWithImpl(this._value, this._then);

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
    extends _$ContractReturnCreateSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
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
    return 'ContractReturnCreateSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
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
    required TResult Function(ContractReturn contractReturn) created,
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
    TResult? Function(ContractReturn contractReturn)? created,
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
    TResult Function(ContractReturn contractReturn)? created,
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

abstract class _ShowDioErrorSnackbar implements ContractReturnCreateSR {
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
    extends _$ContractReturnCreateSRCopyWithImpl<$Res, _$_SuccessNotify>
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
    return 'ContractReturnCreateSR.successNotify(text: $text)';
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
    required TResult Function(ContractReturn contractReturn) created,
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
    TResult? Function(ContractReturn contractReturn)? created,
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
    TResult Function(ContractReturn contractReturn)? created,
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

abstract class _SuccessNotify implements ContractReturnCreateSR {
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
  $Res call({ContractReturn contractReturn});

  $ContractReturnCopyWith<$Res> get contractReturn;
}

/// @nodoc
class __$$_ClientCreatedCopyWithImpl<$Res>
    extends _$ContractReturnCreateSRCopyWithImpl<$Res, _$_ClientCreated>
    implements _$$_ClientCreatedCopyWith<$Res> {
  __$$_ClientCreatedCopyWithImpl(
      _$_ClientCreated _value, $Res Function(_$_ClientCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractReturn = null,
  }) {
    return _then(_$_ClientCreated(
      contractReturn: null == contractReturn
          ? _value.contractReturn
          : contractReturn // ignore: cast_nullable_to_non_nullable
              as ContractReturn,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractReturnCopyWith<$Res> get contractReturn {
    return $ContractReturnCopyWith<$Res>(_value.contractReturn, (value) {
      return _then(_value.copyWith(contractReturn: value));
    });
  }
}

/// @nodoc

class _$_ClientCreated implements _ClientCreated {
  const _$_ClientCreated({required this.contractReturn});

  @override
  final ContractReturn contractReturn;

  @override
  String toString() {
    return 'ContractReturnCreateSR.created(contractReturn: $contractReturn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientCreated &&
            (identical(other.contractReturn, contractReturn) ||
                other.contractReturn == contractReturn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contractReturn);

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
    required TResult Function(ContractReturn contractReturn) created,
  }) {
    return created(contractReturn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(ContractReturn contractReturn)? created,
  }) {
    return created?.call(contractReturn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(ContractReturn contractReturn)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(contractReturn);
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

abstract class _ClientCreated implements ContractReturnCreateSR {
  const factory _ClientCreated({required final ContractReturn contractReturn}) =
      _$_ClientCreated;

  ContractReturn get contractReturn;
  @JsonKey(ignore: true)
  _$$_ClientCreatedCopyWith<_$_ClientCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContractReturnCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractReturnCreateStateEmpty value) empty,
    required TResult Function(ContractReturnCreateStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateStateEmpty value)? empty,
    TResult? Function(ContractReturnCreateStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateStateEmpty value)? empty,
    TResult Function(ContractReturnCreateStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractReturnCreateStateCopyWith<$Res> {
  factory $ContractReturnCreateStateCopyWith(ContractReturnCreateState value,
          $Res Function(ContractReturnCreateState) then) =
      _$ContractReturnCreateStateCopyWithImpl<$Res, ContractReturnCreateState>;
}

/// @nodoc
class _$ContractReturnCreateStateCopyWithImpl<$Res,
        $Val extends ContractReturnCreateState>
    implements $ContractReturnCreateStateCopyWith<$Res> {
  _$ContractReturnCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContractReturnCreateStateEmptyCopyWith<$Res> {
  factory _$$ContractReturnCreateStateEmptyCopyWith(
          _$ContractReturnCreateStateEmpty value,
          $Res Function(_$ContractReturnCreateStateEmpty) then) =
      __$$ContractReturnCreateStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContractReturnCreateStateEmptyCopyWithImpl<$Res>
    extends _$ContractReturnCreateStateCopyWithImpl<$Res,
        _$ContractReturnCreateStateEmpty>
    implements _$$ContractReturnCreateStateEmptyCopyWith<$Res> {
  __$$ContractReturnCreateStateEmptyCopyWithImpl(
      _$ContractReturnCreateStateEmpty _value,
      $Res Function(_$ContractReturnCreateStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContractReturnCreateStateEmpty extends ContractReturnCreateStateEmpty {
  const _$ContractReturnCreateStateEmpty() : super._();

  @override
  String toString() {
    return 'ContractReturnCreateState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractReturnCreateStateEmpty);
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
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)
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
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)?
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
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)?
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
    required TResult Function(ContractReturnCreateStateEmpty value) empty,
    required TResult Function(ContractReturnCreateStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateStateEmpty value)? empty,
    TResult? Function(ContractReturnCreateStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateStateEmpty value)? empty,
    TResult Function(ContractReturnCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ContractReturnCreateStateEmpty
    extends ContractReturnCreateState {
  const factory ContractReturnCreateStateEmpty() =
      _$ContractReturnCreateStateEmpty;
  const ContractReturnCreateStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$ContractReturnCreateStateDataCopyWith<$Res> {
  factory _$$ContractReturnCreateStateDataCopyWith(
          _$ContractReturnCreateStateData value,
          $Res Function(_$ContractReturnCreateStateData) then) =
      __$$ContractReturnCreateStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      GlobalKey<FormState> formKey,
      TextEditingController reason,
      DateTime date,
      Contract? contract,
      ContractReturn? contractReturn});

  $ContractCopyWith<$Res>? get contract;
  $ContractReturnCopyWith<$Res>? get contractReturn;
}

/// @nodoc
class __$$ContractReturnCreateStateDataCopyWithImpl<$Res>
    extends _$ContractReturnCreateStateCopyWithImpl<$Res,
        _$ContractReturnCreateStateData>
    implements _$$ContractReturnCreateStateDataCopyWith<$Res> {
  __$$ContractReturnCreateStateDataCopyWithImpl(
      _$ContractReturnCreateStateData _value,
      $Res Function(_$ContractReturnCreateStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formKey = null,
    Object? reason = null,
    Object? date = null,
    Object? contract = freezed,
    Object? contractReturn = freezed,
  }) {
    return _then(_$ContractReturnCreateStateData(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
      contractReturn: freezed == contractReturn
          ? _value.contractReturn
          : contractReturn // ignore: cast_nullable_to_non_nullable
              as ContractReturn?,
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
  $ContractReturnCopyWith<$Res>? get contractReturn {
    if (_value.contractReturn == null) {
      return null;
    }

    return $ContractReturnCopyWith<$Res>(_value.contractReturn!, (value) {
      return _then(_value.copyWith(contractReturn: value));
    });
  }
}

/// @nodoc

class _$ContractReturnCreateStateData extends ContractReturnCreateStateData {
  const _$ContractReturnCreateStateData(
      {required this.isLoading,
      required this.formKey,
      required this.reason,
      required this.date,
      required this.contract,
      required this.contractReturn})
      : super._();

  @override
  final bool isLoading;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final TextEditingController reason;
  @override
  final DateTime date;
  @override
  final Contract? contract;
  @override
  final ContractReturn? contractReturn;

  @override
  String toString() {
    return 'ContractReturnCreateState.data(isLoading: $isLoading, formKey: $formKey, reason: $reason, date: $date, contract: $contract, contractReturn: $contractReturn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractReturnCreateStateData &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.contractReturn, contractReturn) ||
                other.contractReturn == contractReturn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, formKey, reason, date, contract, contractReturn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractReturnCreateStateDataCopyWith<_$ContractReturnCreateStateData>
      get copyWith => __$$ContractReturnCreateStateDataCopyWithImpl<
          _$ContractReturnCreateStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)
        data,
  }) {
    return data(isLoading, formKey, reason, date, contract, contractReturn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)?
        data,
  }) {
    return data?.call(
        isLoading, formKey, reason, date, contract, contractReturn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController reason,
            DateTime date,
            Contract? contract,
            ContractReturn? contractReturn)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, formKey, reason, date, contract, contractReturn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContractReturnCreateStateEmpty value) empty,
    required TResult Function(ContractReturnCreateStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContractReturnCreateStateEmpty value)? empty,
    TResult? Function(ContractReturnCreateStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContractReturnCreateStateEmpty value)? empty,
    TResult Function(ContractReturnCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ContractReturnCreateStateData extends ContractReturnCreateState {
  const factory ContractReturnCreateStateData(
          {required final bool isLoading,
          required final GlobalKey<FormState> formKey,
          required final TextEditingController reason,
          required final DateTime date,
          required final Contract? contract,
          required final ContractReturn? contractReturn}) =
      _$ContractReturnCreateStateData;
  const ContractReturnCreateStateData._() : super._();

  bool get isLoading;
  GlobalKey<FormState> get formKey;
  TextEditingController get reason;
  DateTime get date;
  Contract? get contract;
  ContractReturn? get contractReturn;
  @JsonKey(ignore: true)
  _$$ContractReturnCreateStateDataCopyWith<_$ContractReturnCreateStateData>
      get copyWith => throw _privateConstructorUsedError;
}
