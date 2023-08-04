// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coal_create_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoalCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coal? coal) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coal? coal)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coal? coal)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoalCreateEventInit value) init,
    required TResult Function(CoalCreateEventCreate value) create,
    required TResult Function(CoalCreateEventUpdate value) update,
    required TResult Function(CoalCreateEventSelectDate value) selectDate,
    required TResult Function(CoalCreateEventSelectContractor value)
        selectContractor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateEventInit value)? init,
    TResult? Function(CoalCreateEventCreate value)? create,
    TResult? Function(CoalCreateEventUpdate value)? update,
    TResult? Function(CoalCreateEventSelectDate value)? selectDate,
    TResult? Function(CoalCreateEventSelectContractor value)? selectContractor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateEventInit value)? init,
    TResult Function(CoalCreateEventCreate value)? create,
    TResult Function(CoalCreateEventUpdate value)? update,
    TResult Function(CoalCreateEventSelectDate value)? selectDate,
    TResult Function(CoalCreateEventSelectContractor value)? selectContractor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoalCreateEventCopyWith<$Res> {
  factory $CoalCreateEventCopyWith(
          CoalCreateEvent value, $Res Function(CoalCreateEvent) then) =
      _$CoalCreateEventCopyWithImpl<$Res, CoalCreateEvent>;
}

/// @nodoc
class _$CoalCreateEventCopyWithImpl<$Res, $Val extends CoalCreateEvent>
    implements $CoalCreateEventCopyWith<$Res> {
  _$CoalCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CoalCreateEventInitCopyWith<$Res> {
  factory _$$CoalCreateEventInitCopyWith(_$CoalCreateEventInit value,
          $Res Function(_$CoalCreateEventInit) then) =
      __$$CoalCreateEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({Coal? coal});

  $CoalCopyWith<$Res>? get coal;
}

/// @nodoc
class __$$CoalCreateEventInitCopyWithImpl<$Res>
    extends _$CoalCreateEventCopyWithImpl<$Res, _$CoalCreateEventInit>
    implements _$$CoalCreateEventInitCopyWith<$Res> {
  __$$CoalCreateEventInitCopyWithImpl(
      _$CoalCreateEventInit _value, $Res Function(_$CoalCreateEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coal = freezed,
  }) {
    return _then(_$CoalCreateEventInit(
      coal: freezed == coal
          ? _value.coal
          : coal // ignore: cast_nullable_to_non_nullable
              as Coal?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoalCopyWith<$Res>? get coal {
    if (_value.coal == null) {
      return null;
    }

    return $CoalCopyWith<$Res>(_value.coal!, (value) {
      return _then(_value.copyWith(coal: value));
    });
  }
}

/// @nodoc

class _$CoalCreateEventInit implements CoalCreateEventInit {
  const _$CoalCreateEventInit({this.coal});

  @override
  final Coal? coal;

  @override
  String toString() {
    return 'CoalCreateEvent.init(coal: $coal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoalCreateEventInit &&
            (identical(other.coal, coal) || other.coal == coal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoalCreateEventInitCopyWith<_$CoalCreateEventInit> get copyWith =>
      __$$CoalCreateEventInitCopyWithImpl<_$CoalCreateEventInit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coal? coal) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
  }) {
    return init(coal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coal? coal)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
  }) {
    return init?.call(coal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coal? coal)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(coal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoalCreateEventInit value) init,
    required TResult Function(CoalCreateEventCreate value) create,
    required TResult Function(CoalCreateEventUpdate value) update,
    required TResult Function(CoalCreateEventSelectDate value) selectDate,
    required TResult Function(CoalCreateEventSelectContractor value)
        selectContractor,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateEventInit value)? init,
    TResult? Function(CoalCreateEventCreate value)? create,
    TResult? Function(CoalCreateEventUpdate value)? update,
    TResult? Function(CoalCreateEventSelectDate value)? selectDate,
    TResult? Function(CoalCreateEventSelectContractor value)? selectContractor,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateEventInit value)? init,
    TResult Function(CoalCreateEventCreate value)? create,
    TResult Function(CoalCreateEventUpdate value)? update,
    TResult Function(CoalCreateEventSelectDate value)? selectDate,
    TResult Function(CoalCreateEventSelectContractor value)? selectContractor,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CoalCreateEventInit implements CoalCreateEvent {
  const factory CoalCreateEventInit({final Coal? coal}) = _$CoalCreateEventInit;

  Coal? get coal;
  @JsonKey(ignore: true)
  _$$CoalCreateEventInitCopyWith<_$CoalCreateEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoalCreateEventCreateCopyWith<$Res> {
  factory _$$CoalCreateEventCreateCopyWith(_$CoalCreateEventCreate value,
          $Res Function(_$CoalCreateEventCreate) then) =
      __$$CoalCreateEventCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoalCreateEventCreateCopyWithImpl<$Res>
    extends _$CoalCreateEventCopyWithImpl<$Res, _$CoalCreateEventCreate>
    implements _$$CoalCreateEventCreateCopyWith<$Res> {
  __$$CoalCreateEventCreateCopyWithImpl(_$CoalCreateEventCreate _value,
      $Res Function(_$CoalCreateEventCreate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoalCreateEventCreate implements CoalCreateEventCreate {
  const _$CoalCreateEventCreate();

  @override
  String toString() {
    return 'CoalCreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoalCreateEventCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coal? coal) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coal? coal)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coal? coal)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
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
    required TResult Function(CoalCreateEventInit value) init,
    required TResult Function(CoalCreateEventCreate value) create,
    required TResult Function(CoalCreateEventUpdate value) update,
    required TResult Function(CoalCreateEventSelectDate value) selectDate,
    required TResult Function(CoalCreateEventSelectContractor value)
        selectContractor,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateEventInit value)? init,
    TResult? Function(CoalCreateEventCreate value)? create,
    TResult? Function(CoalCreateEventUpdate value)? update,
    TResult? Function(CoalCreateEventSelectDate value)? selectDate,
    TResult? Function(CoalCreateEventSelectContractor value)? selectContractor,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateEventInit value)? init,
    TResult Function(CoalCreateEventCreate value)? create,
    TResult Function(CoalCreateEventUpdate value)? update,
    TResult Function(CoalCreateEventSelectDate value)? selectDate,
    TResult Function(CoalCreateEventSelectContractor value)? selectContractor,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CoalCreateEventCreate implements CoalCreateEvent {
  const factory CoalCreateEventCreate() = _$CoalCreateEventCreate;
}

/// @nodoc
abstract class _$$CoalCreateEventUpdateCopyWith<$Res> {
  factory _$$CoalCreateEventUpdateCopyWith(_$CoalCreateEventUpdate value,
          $Res Function(_$CoalCreateEventUpdate) then) =
      __$$CoalCreateEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoalCreateEventUpdateCopyWithImpl<$Res>
    extends _$CoalCreateEventCopyWithImpl<$Res, _$CoalCreateEventUpdate>
    implements _$$CoalCreateEventUpdateCopyWith<$Res> {
  __$$CoalCreateEventUpdateCopyWithImpl(_$CoalCreateEventUpdate _value,
      $Res Function(_$CoalCreateEventUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoalCreateEventUpdate implements CoalCreateEventUpdate {
  const _$CoalCreateEventUpdate();

  @override
  String toString() {
    return 'CoalCreateEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoalCreateEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coal? coal) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coal? coal)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coal? coal)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
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
    required TResult Function(CoalCreateEventInit value) init,
    required TResult Function(CoalCreateEventCreate value) create,
    required TResult Function(CoalCreateEventUpdate value) update,
    required TResult Function(CoalCreateEventSelectDate value) selectDate,
    required TResult Function(CoalCreateEventSelectContractor value)
        selectContractor,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateEventInit value)? init,
    TResult? Function(CoalCreateEventCreate value)? create,
    TResult? Function(CoalCreateEventUpdate value)? update,
    TResult? Function(CoalCreateEventSelectDate value)? selectDate,
    TResult? Function(CoalCreateEventSelectContractor value)? selectContractor,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateEventInit value)? init,
    TResult Function(CoalCreateEventCreate value)? create,
    TResult Function(CoalCreateEventUpdate value)? update,
    TResult Function(CoalCreateEventSelectDate value)? selectDate,
    TResult Function(CoalCreateEventSelectContractor value)? selectContractor,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CoalCreateEventUpdate implements CoalCreateEvent {
  const factory CoalCreateEventUpdate() = _$CoalCreateEventUpdate;
}

/// @nodoc
abstract class _$$CoalCreateEventSelectDateCopyWith<$Res> {
  factory _$$CoalCreateEventSelectDateCopyWith(
          _$CoalCreateEventSelectDate value,
          $Res Function(_$CoalCreateEventSelectDate) then) =
      __$$CoalCreateEventSelectDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$CoalCreateEventSelectDateCopyWithImpl<$Res>
    extends _$CoalCreateEventCopyWithImpl<$Res, _$CoalCreateEventSelectDate>
    implements _$$CoalCreateEventSelectDateCopyWith<$Res> {
  __$$CoalCreateEventSelectDateCopyWithImpl(_$CoalCreateEventSelectDate _value,
      $Res Function(_$CoalCreateEventSelectDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$CoalCreateEventSelectDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CoalCreateEventSelectDate implements CoalCreateEventSelectDate {
  const _$CoalCreateEventSelectDate({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CoalCreateEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoalCreateEventSelectDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoalCreateEventSelectDateCopyWith<_$CoalCreateEventSelectDate>
      get copyWith => __$$CoalCreateEventSelectDateCopyWithImpl<
          _$CoalCreateEventSelectDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coal? coal) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coal? coal)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coal? coal)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
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
    required TResult Function(CoalCreateEventInit value) init,
    required TResult Function(CoalCreateEventCreate value) create,
    required TResult Function(CoalCreateEventUpdate value) update,
    required TResult Function(CoalCreateEventSelectDate value) selectDate,
    required TResult Function(CoalCreateEventSelectContractor value)
        selectContractor,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateEventInit value)? init,
    TResult? Function(CoalCreateEventCreate value)? create,
    TResult? Function(CoalCreateEventUpdate value)? update,
    TResult? Function(CoalCreateEventSelectDate value)? selectDate,
    TResult? Function(CoalCreateEventSelectContractor value)? selectContractor,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateEventInit value)? init,
    TResult Function(CoalCreateEventCreate value)? create,
    TResult Function(CoalCreateEventUpdate value)? update,
    TResult Function(CoalCreateEventSelectDate value)? selectDate,
    TResult Function(CoalCreateEventSelectContractor value)? selectContractor,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class CoalCreateEventSelectDate implements CoalCreateEvent {
  const factory CoalCreateEventSelectDate({required final DateTime date}) =
      _$CoalCreateEventSelectDate;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$CoalCreateEventSelectDateCopyWith<_$CoalCreateEventSelectDate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoalCreateEventSelectContractorCopyWith<$Res> {
  factory _$$CoalCreateEventSelectContractorCopyWith(
          _$CoalCreateEventSelectContractor value,
          $Res Function(_$CoalCreateEventSelectContractor) then) =
      __$$CoalCreateEventSelectContractorCopyWithImpl<$Res>;
  @useResult
  $Res call({Contract? contract});

  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$CoalCreateEventSelectContractorCopyWithImpl<$Res>
    extends _$CoalCreateEventCopyWithImpl<$Res,
        _$CoalCreateEventSelectContractor>
    implements _$$CoalCreateEventSelectContractorCopyWith<$Res> {
  __$$CoalCreateEventSelectContractorCopyWithImpl(
      _$CoalCreateEventSelectContractor _value,
      $Res Function(_$CoalCreateEventSelectContractor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_$CoalCreateEventSelectContractor(
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

class _$CoalCreateEventSelectContractor
    implements CoalCreateEventSelectContractor {
  const _$CoalCreateEventSelectContractor({this.contract});

  @override
  final Contract? contract;

  @override
  String toString() {
    return 'CoalCreateEvent.selectContractor(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoalCreateEventSelectContractor &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoalCreateEventSelectContractorCopyWith<_$CoalCreateEventSelectContractor>
      get copyWith => __$$CoalCreateEventSelectContractorCopyWithImpl<
          _$CoalCreateEventSelectContractor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coal? coal) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(DateTime date) selectDate,
    required TResult Function(Contract? contract) selectContractor,
  }) {
    return selectContractor(contract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coal? coal)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(DateTime date)? selectDate,
    TResult? Function(Contract? contract)? selectContractor,
  }) {
    return selectContractor?.call(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coal? coal)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(DateTime date)? selectDate,
    TResult Function(Contract? contract)? selectContractor,
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
    required TResult Function(CoalCreateEventInit value) init,
    required TResult Function(CoalCreateEventCreate value) create,
    required TResult Function(CoalCreateEventUpdate value) update,
    required TResult Function(CoalCreateEventSelectDate value) selectDate,
    required TResult Function(CoalCreateEventSelectContractor value)
        selectContractor,
  }) {
    return selectContractor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateEventInit value)? init,
    TResult? Function(CoalCreateEventCreate value)? create,
    TResult? Function(CoalCreateEventUpdate value)? update,
    TResult? Function(CoalCreateEventSelectDate value)? selectDate,
    TResult? Function(CoalCreateEventSelectContractor value)? selectContractor,
  }) {
    return selectContractor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateEventInit value)? init,
    TResult Function(CoalCreateEventCreate value)? create,
    TResult Function(CoalCreateEventUpdate value)? update,
    TResult Function(CoalCreateEventSelectDate value)? selectDate,
    TResult Function(CoalCreateEventSelectContractor value)? selectContractor,
    required TResult orElse(),
  }) {
    if (selectContractor != null) {
      return selectContractor(this);
    }
    return orElse();
  }
}

abstract class CoalCreateEventSelectContractor implements CoalCreateEvent {
  const factory CoalCreateEventSelectContractor({final Contract? contract}) =
      _$CoalCreateEventSelectContractor;

  Contract? get contract;
  @JsonKey(ignore: true)
  _$$CoalCreateEventSelectContractorCopyWith<_$CoalCreateEventSelectContractor>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoalCreateSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Coal coal) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Coal coal)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Coal coal)? created,
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
abstract class $CoalCreateSRCopyWith<$Res> {
  factory $CoalCreateSRCopyWith(
          CoalCreateSR value, $Res Function(CoalCreateSR) then) =
      _$CoalCreateSRCopyWithImpl<$Res, CoalCreateSR>;
}

/// @nodoc
class _$CoalCreateSRCopyWithImpl<$Res, $Val extends CoalCreateSR>
    implements $CoalCreateSRCopyWith<$Res> {
  _$CoalCreateSRCopyWithImpl(this._value, this._then);

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
    extends _$CoalCreateSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
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
    return 'CoalCreateSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
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
    required TResult Function(Coal coal) created,
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
    TResult? Function(Coal coal)? created,
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
    TResult Function(Coal coal)? created,
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

abstract class _ShowDioErrorSnackbar implements CoalCreateSR {
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
    extends _$CoalCreateSRCopyWithImpl<$Res, _$_SuccessNotify>
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
    return 'CoalCreateSR.successNotify(text: $text)';
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
    required TResult Function(Coal coal) created,
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
    TResult? Function(Coal coal)? created,
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
    TResult Function(Coal coal)? created,
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

abstract class _SuccessNotify implements CoalCreateSR {
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
  $Res call({Coal coal});

  $CoalCopyWith<$Res> get coal;
}

/// @nodoc
class __$$_ClientCreatedCopyWithImpl<$Res>
    extends _$CoalCreateSRCopyWithImpl<$Res, _$_ClientCreated>
    implements _$$_ClientCreatedCopyWith<$Res> {
  __$$_ClientCreatedCopyWithImpl(
      _$_ClientCreated _value, $Res Function(_$_ClientCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coal = null,
  }) {
    return _then(_$_ClientCreated(
      coal: null == coal
          ? _value.coal
          : coal // ignore: cast_nullable_to_non_nullable
              as Coal,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoalCopyWith<$Res> get coal {
    return $CoalCopyWith<$Res>(_value.coal, (value) {
      return _then(_value.copyWith(coal: value));
    });
  }
}

/// @nodoc

class _$_ClientCreated implements _ClientCreated {
  const _$_ClientCreated({required this.coal});

  @override
  final Coal coal;

  @override
  String toString() {
    return 'CoalCreateSR.created(coal: $coal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientCreated &&
            (identical(other.coal, coal) || other.coal == coal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coal);

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
    required TResult Function(Coal coal) created,
  }) {
    return created(coal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Coal coal)? created,
  }) {
    return created?.call(coal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Coal coal)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(coal);
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

abstract class _ClientCreated implements CoalCreateSR {
  const factory _ClientCreated({required final Coal coal}) = _$_ClientCreated;

  Coal get coal;
  @JsonKey(ignore: true)
  _$$_ClientCreatedCopyWith<_$_ClientCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoalCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoalCreateStateEmpty value) empty,
    required TResult Function(CoalCreateStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateStateEmpty value)? empty,
    TResult? Function(CoalCreateStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateStateEmpty value)? empty,
    TResult Function(CoalCreateStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoalCreateStateCopyWith<$Res> {
  factory $CoalCreateStateCopyWith(
          CoalCreateState value, $Res Function(CoalCreateState) then) =
      _$CoalCreateStateCopyWithImpl<$Res, CoalCreateState>;
}

/// @nodoc
class _$CoalCreateStateCopyWithImpl<$Res, $Val extends CoalCreateState>
    implements $CoalCreateStateCopyWith<$Res> {
  _$CoalCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CoalCreateStateEmptyCopyWith<$Res> {
  factory _$$CoalCreateStateEmptyCopyWith(_$CoalCreateStateEmpty value,
          $Res Function(_$CoalCreateStateEmpty) then) =
      __$$CoalCreateStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoalCreateStateEmptyCopyWithImpl<$Res>
    extends _$CoalCreateStateCopyWithImpl<$Res, _$CoalCreateStateEmpty>
    implements _$$CoalCreateStateEmptyCopyWith<$Res> {
  __$$CoalCreateStateEmptyCopyWithImpl(_$CoalCreateStateEmpty _value,
      $Res Function(_$CoalCreateStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoalCreateStateEmpty extends CoalCreateStateEmpty {
  const _$CoalCreateStateEmpty() : super._();

  @override
  String toString() {
    return 'CoalCreateState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoalCreateStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)
        data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)?
        data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)?
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
    required TResult Function(CoalCreateStateEmpty value) empty,
    required TResult Function(CoalCreateStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateStateEmpty value)? empty,
    TResult? Function(CoalCreateStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateStateEmpty value)? empty,
    TResult Function(CoalCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CoalCreateStateEmpty extends CoalCreateState {
  const factory CoalCreateStateEmpty() = _$CoalCreateStateEmpty;
  const CoalCreateStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$CoalCreateStateDataCopyWith<$Res> {
  factory _$$CoalCreateStateDataCopyWith(_$CoalCreateStateData value,
          $Res Function(_$CoalCreateStateData) then) =
      __$$CoalCreateStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      GlobalKey<FormState> formKey,
      DateTime date,
      Contract? contract,
      Coal? coal});

  $ContractCopyWith<$Res>? get contract;
  $CoalCopyWith<$Res>? get coal;
}

/// @nodoc
class __$$CoalCreateStateDataCopyWithImpl<$Res>
    extends _$CoalCreateStateCopyWithImpl<$Res, _$CoalCreateStateData>
    implements _$$CoalCreateStateDataCopyWith<$Res> {
  __$$CoalCreateStateDataCopyWithImpl(
      _$CoalCreateStateData _value, $Res Function(_$CoalCreateStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formKey = null,
    Object? date = null,
    Object? contract = freezed,
    Object? coal = freezed,
  }) {
    return _then(_$CoalCreateStateData(
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
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
      coal: freezed == coal
          ? _value.coal
          : coal // ignore: cast_nullable_to_non_nullable
              as Coal?,
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
  $CoalCopyWith<$Res>? get coal {
    if (_value.coal == null) {
      return null;
    }

    return $CoalCopyWith<$Res>(_value.coal!, (value) {
      return _then(_value.copyWith(coal: value));
    });
  }
}

/// @nodoc

class _$CoalCreateStateData extends CoalCreateStateData {
  const _$CoalCreateStateData(
      {required this.isLoading,
      required this.formKey,
      required this.date,
      required this.contract,
      required this.coal})
      : super._();

  @override
  final bool isLoading;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final DateTime date;
  @override
  final Contract? contract;
  @override
  final Coal? coal;

  @override
  String toString() {
    return 'CoalCreateState.data(isLoading: $isLoading, formKey: $formKey, date: $date, contract: $contract, coal: $coal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoalCreateStateData &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.coal, coal) || other.coal == coal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, formKey, date, contract, coal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoalCreateStateDataCopyWith<_$CoalCreateStateData> get copyWith =>
      __$$CoalCreateStateDataCopyWithImpl<_$CoalCreateStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)
        data,
  }) {
    return data(isLoading, formKey, date, contract, coal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)?
        data,
  }) {
    return data?.call(isLoading, formKey, date, contract, coal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(bool isLoading, GlobalKey<FormState> formKey,
            DateTime date, Contract? contract, Coal? coal)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, formKey, date, contract, coal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoalCreateStateEmpty value) empty,
    required TResult Function(CoalCreateStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoalCreateStateEmpty value)? empty,
    TResult? Function(CoalCreateStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoalCreateStateEmpty value)? empty,
    TResult Function(CoalCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class CoalCreateStateData extends CoalCreateState {
  const factory CoalCreateStateData(
      {required final bool isLoading,
      required final GlobalKey<FormState> formKey,
      required final DateTime date,
      required final Contract? contract,
      required final Coal? coal}) = _$CoalCreateStateData;
  const CoalCreateStateData._() : super._();

  bool get isLoading;
  GlobalKey<FormState> get formKey;
  DateTime get date;
  Contract? get contract;
  Coal? get coal;
  @JsonKey(ignore: true)
  _$$CoalCreateStateDataCopyWith<_$CoalCreateStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
