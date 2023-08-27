// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_create_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment? payment) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Payment? payment)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payment? payment)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentCreateEventInit value) init,
    required TResult Function(PaymentCreateEventCreate value) create,
    required TResult Function(PaymentCreateEventUpdate value) update,
    required TResult Function(PaymentCreateEventSelectContract value)
        selectContract,
    required TResult Function(PaymentCreateEventSelectDate value) selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateEventInit value)? init,
    TResult? Function(PaymentCreateEventCreate value)? create,
    TResult? Function(PaymentCreateEventUpdate value)? update,
    TResult? Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult? Function(PaymentCreateEventSelectDate value)? selectDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateEventInit value)? init,
    TResult Function(PaymentCreateEventCreate value)? create,
    TResult Function(PaymentCreateEventUpdate value)? update,
    TResult Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult Function(PaymentCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCreateEventCopyWith<$Res> {
  factory $PaymentCreateEventCopyWith(
          PaymentCreateEvent value, $Res Function(PaymentCreateEvent) then) =
      _$PaymentCreateEventCopyWithImpl<$Res, PaymentCreateEvent>;
}

/// @nodoc
class _$PaymentCreateEventCopyWithImpl<$Res, $Val extends PaymentCreateEvent>
    implements $PaymentCreateEventCopyWith<$Res> {
  _$PaymentCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentCreateEventInitCopyWith<$Res> {
  factory _$$PaymentCreateEventInitCopyWith(_$PaymentCreateEventInit value,
          $Res Function(_$PaymentCreateEventInit) then) =
      __$$PaymentCreateEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({Payment? payment});

  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$PaymentCreateEventInitCopyWithImpl<$Res>
    extends _$PaymentCreateEventCopyWithImpl<$Res, _$PaymentCreateEventInit>
    implements _$$PaymentCreateEventInitCopyWith<$Res> {
  __$$PaymentCreateEventInitCopyWithImpl(_$PaymentCreateEventInit _value,
      $Res Function(_$PaymentCreateEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = freezed,
  }) {
    return _then(_$PaymentCreateEventInit(
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$PaymentCreateEventInit implements PaymentCreateEventInit {
  const _$PaymentCreateEventInit({this.payment});

  @override
  final Payment? payment;

  @override
  String toString() {
    return 'PaymentCreateEvent.init(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateEventInit &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCreateEventInitCopyWith<_$PaymentCreateEventInit> get copyWith =>
      __$$PaymentCreateEventInitCopyWithImpl<_$PaymentCreateEventInit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment? payment) init,
    required TResult Function() create,
    required TResult Function() update,
    required TResult Function(Contract? contract) selectContract,
    required TResult Function(DateTime date) selectDate,
  }) {
    return init(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Payment? payment)? init,
    TResult? Function()? create,
    TResult? Function()? update,
    TResult? Function(Contract? contract)? selectContract,
    TResult? Function(DateTime date)? selectDate,
  }) {
    return init?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payment? payment)? init,
    TResult Function()? create,
    TResult Function()? update,
    TResult Function(Contract? contract)? selectContract,
    TResult Function(DateTime date)? selectDate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentCreateEventInit value) init,
    required TResult Function(PaymentCreateEventCreate value) create,
    required TResult Function(PaymentCreateEventUpdate value) update,
    required TResult Function(PaymentCreateEventSelectContract value)
        selectContract,
    required TResult Function(PaymentCreateEventSelectDate value) selectDate,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateEventInit value)? init,
    TResult? Function(PaymentCreateEventCreate value)? create,
    TResult? Function(PaymentCreateEventUpdate value)? update,
    TResult? Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult? Function(PaymentCreateEventSelectDate value)? selectDate,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateEventInit value)? init,
    TResult Function(PaymentCreateEventCreate value)? create,
    TResult Function(PaymentCreateEventUpdate value)? update,
    TResult Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult Function(PaymentCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PaymentCreateEventInit implements PaymentCreateEvent {
  const factory PaymentCreateEventInit({final Payment? payment}) =
      _$PaymentCreateEventInit;

  Payment? get payment;
  @JsonKey(ignore: true)
  _$$PaymentCreateEventInitCopyWith<_$PaymentCreateEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentCreateEventCreateCopyWith<$Res> {
  factory _$$PaymentCreateEventCreateCopyWith(_$PaymentCreateEventCreate value,
          $Res Function(_$PaymentCreateEventCreate) then) =
      __$$PaymentCreateEventCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentCreateEventCreateCopyWithImpl<$Res>
    extends _$PaymentCreateEventCopyWithImpl<$Res, _$PaymentCreateEventCreate>
    implements _$$PaymentCreateEventCreateCopyWith<$Res> {
  __$$PaymentCreateEventCreateCopyWithImpl(_$PaymentCreateEventCreate _value,
      $Res Function(_$PaymentCreateEventCreate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentCreateEventCreate implements PaymentCreateEventCreate {
  const _$PaymentCreateEventCreate();

  @override
  String toString() {
    return 'PaymentCreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateEventCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment? payment) init,
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
    TResult? Function(Payment? payment)? init,
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
    TResult Function(Payment? payment)? init,
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
    required TResult Function(PaymentCreateEventInit value) init,
    required TResult Function(PaymentCreateEventCreate value) create,
    required TResult Function(PaymentCreateEventUpdate value) update,
    required TResult Function(PaymentCreateEventSelectContract value)
        selectContract,
    required TResult Function(PaymentCreateEventSelectDate value) selectDate,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateEventInit value)? init,
    TResult? Function(PaymentCreateEventCreate value)? create,
    TResult? Function(PaymentCreateEventUpdate value)? update,
    TResult? Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult? Function(PaymentCreateEventSelectDate value)? selectDate,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateEventInit value)? init,
    TResult Function(PaymentCreateEventCreate value)? create,
    TResult Function(PaymentCreateEventUpdate value)? update,
    TResult Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult Function(PaymentCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class PaymentCreateEventCreate implements PaymentCreateEvent {
  const factory PaymentCreateEventCreate() = _$PaymentCreateEventCreate;
}

/// @nodoc
abstract class _$$PaymentCreateEventUpdateCopyWith<$Res> {
  factory _$$PaymentCreateEventUpdateCopyWith(_$PaymentCreateEventUpdate value,
          $Res Function(_$PaymentCreateEventUpdate) then) =
      __$$PaymentCreateEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentCreateEventUpdateCopyWithImpl<$Res>
    extends _$PaymentCreateEventCopyWithImpl<$Res, _$PaymentCreateEventUpdate>
    implements _$$PaymentCreateEventUpdateCopyWith<$Res> {
  __$$PaymentCreateEventUpdateCopyWithImpl(_$PaymentCreateEventUpdate _value,
      $Res Function(_$PaymentCreateEventUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentCreateEventUpdate implements PaymentCreateEventUpdate {
  const _$PaymentCreateEventUpdate();

  @override
  String toString() {
    return 'PaymentCreateEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment? payment) init,
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
    TResult? Function(Payment? payment)? init,
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
    TResult Function(Payment? payment)? init,
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
    required TResult Function(PaymentCreateEventInit value) init,
    required TResult Function(PaymentCreateEventCreate value) create,
    required TResult Function(PaymentCreateEventUpdate value) update,
    required TResult Function(PaymentCreateEventSelectContract value)
        selectContract,
    required TResult Function(PaymentCreateEventSelectDate value) selectDate,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateEventInit value)? init,
    TResult? Function(PaymentCreateEventCreate value)? create,
    TResult? Function(PaymentCreateEventUpdate value)? update,
    TResult? Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult? Function(PaymentCreateEventSelectDate value)? selectDate,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateEventInit value)? init,
    TResult Function(PaymentCreateEventCreate value)? create,
    TResult Function(PaymentCreateEventUpdate value)? update,
    TResult Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult Function(PaymentCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class PaymentCreateEventUpdate implements PaymentCreateEvent {
  const factory PaymentCreateEventUpdate() = _$PaymentCreateEventUpdate;
}

/// @nodoc
abstract class _$$PaymentCreateEventSelectContractCopyWith<$Res> {
  factory _$$PaymentCreateEventSelectContractCopyWith(
          _$PaymentCreateEventSelectContract value,
          $Res Function(_$PaymentCreateEventSelectContract) then) =
      __$$PaymentCreateEventSelectContractCopyWithImpl<$Res>;
  @useResult
  $Res call({Contract? contract});

  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$PaymentCreateEventSelectContractCopyWithImpl<$Res>
    extends _$PaymentCreateEventCopyWithImpl<$Res,
        _$PaymentCreateEventSelectContract>
    implements _$$PaymentCreateEventSelectContractCopyWith<$Res> {
  __$$PaymentCreateEventSelectContractCopyWithImpl(
      _$PaymentCreateEventSelectContract _value,
      $Res Function(_$PaymentCreateEventSelectContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_$PaymentCreateEventSelectContract(
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

class _$PaymentCreateEventSelectContract
    implements PaymentCreateEventSelectContract {
  const _$PaymentCreateEventSelectContract({required this.contract});

  @override
  final Contract? contract;

  @override
  String toString() {
    return 'PaymentCreateEvent.selectContract(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateEventSelectContract &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCreateEventSelectContractCopyWith<
          _$PaymentCreateEventSelectContract>
      get copyWith => __$$PaymentCreateEventSelectContractCopyWithImpl<
          _$PaymentCreateEventSelectContract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment? payment) init,
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
    TResult? Function(Payment? payment)? init,
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
    TResult Function(Payment? payment)? init,
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
    required TResult Function(PaymentCreateEventInit value) init,
    required TResult Function(PaymentCreateEventCreate value) create,
    required TResult Function(PaymentCreateEventUpdate value) update,
    required TResult Function(PaymentCreateEventSelectContract value)
        selectContract,
    required TResult Function(PaymentCreateEventSelectDate value) selectDate,
  }) {
    return selectContract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateEventInit value)? init,
    TResult? Function(PaymentCreateEventCreate value)? create,
    TResult? Function(PaymentCreateEventUpdate value)? update,
    TResult? Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult? Function(PaymentCreateEventSelectDate value)? selectDate,
  }) {
    return selectContract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateEventInit value)? init,
    TResult Function(PaymentCreateEventCreate value)? create,
    TResult Function(PaymentCreateEventUpdate value)? update,
    TResult Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult Function(PaymentCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (selectContract != null) {
      return selectContract(this);
    }
    return orElse();
  }
}

abstract class PaymentCreateEventSelectContract implements PaymentCreateEvent {
  const factory PaymentCreateEventSelectContract(
      {required final Contract? contract}) = _$PaymentCreateEventSelectContract;

  Contract? get contract;
  @JsonKey(ignore: true)
  _$$PaymentCreateEventSelectContractCopyWith<
          _$PaymentCreateEventSelectContract>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentCreateEventSelectDateCopyWith<$Res> {
  factory _$$PaymentCreateEventSelectDateCopyWith(
          _$PaymentCreateEventSelectDate value,
          $Res Function(_$PaymentCreateEventSelectDate) then) =
      __$$PaymentCreateEventSelectDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$PaymentCreateEventSelectDateCopyWithImpl<$Res>
    extends _$PaymentCreateEventCopyWithImpl<$Res,
        _$PaymentCreateEventSelectDate>
    implements _$$PaymentCreateEventSelectDateCopyWith<$Res> {
  __$$PaymentCreateEventSelectDateCopyWithImpl(
      _$PaymentCreateEventSelectDate _value,
      $Res Function(_$PaymentCreateEventSelectDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$PaymentCreateEventSelectDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PaymentCreateEventSelectDate implements PaymentCreateEventSelectDate {
  const _$PaymentCreateEventSelectDate({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'PaymentCreateEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateEventSelectDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCreateEventSelectDateCopyWith<_$PaymentCreateEventSelectDate>
      get copyWith => __$$PaymentCreateEventSelectDateCopyWithImpl<
          _$PaymentCreateEventSelectDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment? payment) init,
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
    TResult? Function(Payment? payment)? init,
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
    TResult Function(Payment? payment)? init,
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
    required TResult Function(PaymentCreateEventInit value) init,
    required TResult Function(PaymentCreateEventCreate value) create,
    required TResult Function(PaymentCreateEventUpdate value) update,
    required TResult Function(PaymentCreateEventSelectContract value)
        selectContract,
    required TResult Function(PaymentCreateEventSelectDate value) selectDate,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateEventInit value)? init,
    TResult? Function(PaymentCreateEventCreate value)? create,
    TResult? Function(PaymentCreateEventUpdate value)? update,
    TResult? Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult? Function(PaymentCreateEventSelectDate value)? selectDate,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateEventInit value)? init,
    TResult Function(PaymentCreateEventCreate value)? create,
    TResult Function(PaymentCreateEventUpdate value)? update,
    TResult Function(PaymentCreateEventSelectContract value)? selectContract,
    TResult Function(PaymentCreateEventSelectDate value)? selectDate,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class PaymentCreateEventSelectDate implements PaymentCreateEvent {
  const factory PaymentCreateEventSelectDate({required final DateTime date}) =
      _$PaymentCreateEventSelectDate;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$PaymentCreateEventSelectDateCopyWith<_$PaymentCreateEventSelectDate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentCreateSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)
        showDioError,
    required TResult Function(String text) successNotify,
    required TResult Function(Payment payment) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Payment payment)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Payment payment)? created,
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
abstract class $PaymentCreateSRCopyWith<$Res> {
  factory $PaymentCreateSRCopyWith(
          PaymentCreateSR value, $Res Function(PaymentCreateSR) then) =
      _$PaymentCreateSRCopyWithImpl<$Res, PaymentCreateSR>;
}

/// @nodoc
class _$PaymentCreateSRCopyWithImpl<$Res, $Val extends PaymentCreateSR>
    implements $PaymentCreateSRCopyWith<$Res> {
  _$PaymentCreateSRCopyWithImpl(this._value, this._then);

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
    extends _$PaymentCreateSRCopyWithImpl<$Res, _$_ShowDioErrorSnackbar>
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
    return 'PaymentCreateSR.showDioError(error: $error, notifyErrorSnackbar: $notifyErrorSnackbar)';
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
    required TResult Function(Payment payment) created,
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
    TResult? Function(Payment payment)? created,
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
    TResult Function(Payment payment)? created,
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

abstract class _ShowDioErrorSnackbar implements PaymentCreateSR {
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
    extends _$PaymentCreateSRCopyWithImpl<$Res, _$_SuccessNotify>
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
    return 'PaymentCreateSR.successNotify(text: $text)';
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
    required TResult Function(Payment payment) created,
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
    TResult? Function(Payment payment)? created,
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
    TResult Function(Payment payment)? created,
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

abstract class _SuccessNotify implements PaymentCreateSR {
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
  $Res call({Payment payment});

  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$_ClientCreatedCopyWithImpl<$Res>
    extends _$PaymentCreateSRCopyWithImpl<$Res, _$_ClientCreated>
    implements _$$_ClientCreatedCopyWith<$Res> {
  __$$_ClientCreatedCopyWithImpl(
      _$_ClientCreated _value, $Res Function(_$_ClientCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$_ClientCreated(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$_ClientCreated implements _ClientCreated {
  const _$_ClientCreated({required this.payment});

  @override
  final Payment payment;

  @override
  String toString() {
    return 'PaymentCreateSR.created(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientCreated &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

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
    required TResult Function(Payment payment) created,
  }) {
    return created(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult? Function(String text)? successNotify,
    TResult? Function(Payment payment)? created,
  }) {
    return created?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonResponseError<DefaultApiError> error,
            NotifyErrorSnackbar notifyErrorSnackbar)?
        showDioError,
    TResult Function(String text)? successNotify,
    TResult Function(Payment payment)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(payment);
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

abstract class _ClientCreated implements PaymentCreateSR {
  const factory _ClientCreated({required final Payment payment}) =
      _$_ClientCreated;

  Payment get payment;
  @JsonKey(ignore: true)
  _$$_ClientCreatedCopyWith<_$_ClientCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentCreateStateEmpty value) empty,
    required TResult Function(PaymentCreateStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateStateEmpty value)? empty,
    TResult? Function(PaymentCreateStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateStateEmpty value)? empty,
    TResult Function(PaymentCreateStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCreateStateCopyWith<$Res> {
  factory $PaymentCreateStateCopyWith(
          PaymentCreateState value, $Res Function(PaymentCreateState) then) =
      _$PaymentCreateStateCopyWithImpl<$Res, PaymentCreateState>;
}

/// @nodoc
class _$PaymentCreateStateCopyWithImpl<$Res, $Val extends PaymentCreateState>
    implements $PaymentCreateStateCopyWith<$Res> {
  _$PaymentCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentCreateStateEmptyCopyWith<$Res> {
  factory _$$PaymentCreateStateEmptyCopyWith(_$PaymentCreateStateEmpty value,
          $Res Function(_$PaymentCreateStateEmpty) then) =
      __$$PaymentCreateStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentCreateStateEmptyCopyWithImpl<$Res>
    extends _$PaymentCreateStateCopyWithImpl<$Res, _$PaymentCreateStateEmpty>
    implements _$$PaymentCreateStateEmptyCopyWith<$Res> {
  __$$PaymentCreateStateEmptyCopyWithImpl(_$PaymentCreateStateEmpty _value,
      $Res Function(_$PaymentCreateStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentCreateStateEmpty extends PaymentCreateStateEmpty {
  const _$PaymentCreateStateEmpty() : super._();

  @override
  String toString() {
    return 'PaymentCreateState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateStateEmpty);
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
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)
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
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)?
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
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)?
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
    required TResult Function(PaymentCreateStateEmpty value) empty,
    required TResult Function(PaymentCreateStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateStateEmpty value)? empty,
    TResult? Function(PaymentCreateStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateStateEmpty value)? empty,
    TResult Function(PaymentCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PaymentCreateStateEmpty extends PaymentCreateState {
  const factory PaymentCreateStateEmpty() = _$PaymentCreateStateEmpty;
  const PaymentCreateStateEmpty._() : super._();
}

/// @nodoc
abstract class _$$PaymentCreateStateDataCopyWith<$Res> {
  factory _$$PaymentCreateStateDataCopyWith(_$PaymentCreateStateData value,
          $Res Function(_$PaymentCreateStateData) then) =
      __$$PaymentCreateStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      GlobalKey<FormState> formKey,
      TextEditingController amount,
      TextEditingController comment,
      DateTime date,
      Contract? contract,
      Payment? payment});

  $ContractCopyWith<$Res>? get contract;
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$PaymentCreateStateDataCopyWithImpl<$Res>
    extends _$PaymentCreateStateCopyWithImpl<$Res, _$PaymentCreateStateData>
    implements _$$PaymentCreateStateDataCopyWith<$Res> {
  __$$PaymentCreateStateDataCopyWithImpl(_$PaymentCreateStateData _value,
      $Res Function(_$PaymentCreateStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formKey = null,
    Object? amount = null,
    Object? comment = null,
    Object? date = null,
    Object? contract = freezed,
    Object? payment = freezed,
  }) {
    return _then(_$PaymentCreateStateData(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
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
  $PaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$PaymentCreateStateData extends PaymentCreateStateData {
  const _$PaymentCreateStateData(
      {required this.isLoading,
      required this.formKey,
      required this.amount,
      required this.comment,
      required this.date,
      required this.contract,
      required this.payment})
      : super._();

  @override
  final bool isLoading;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final TextEditingController amount;
  @override
  final TextEditingController comment;
  @override
  final DateTime date;
  @override
  final Contract? contract;
  @override
  final Payment? payment;

  @override
  String toString() {
    return 'PaymentCreateState.data(isLoading: $isLoading, formKey: $formKey, amount: $amount, comment: $comment, date: $date, contract: $contract, payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreateStateData &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, formKey, amount,
      comment, date, contract, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCreateStateDataCopyWith<_$PaymentCreateStateData> get copyWith =>
      __$$PaymentCreateStateDataCopyWithImpl<_$PaymentCreateStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)
        data,
  }) {
    return data(isLoading, formKey, amount, comment, date, contract, payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)?
        data,
  }) {
    return data?.call(
        isLoading, formKey, amount, comment, date, contract, payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool isLoading,
            GlobalKey<FormState> formKey,
            TextEditingController amount,
            TextEditingController comment,
            DateTime date,
            Contract? contract,
            Payment? payment)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, formKey, amount, comment, date, contract, payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentCreateStateEmpty value) empty,
    required TResult Function(PaymentCreateStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentCreateStateEmpty value)? empty,
    TResult? Function(PaymentCreateStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentCreateStateEmpty value)? empty,
    TResult Function(PaymentCreateStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class PaymentCreateStateData extends PaymentCreateState {
  const factory PaymentCreateStateData(
      {required final bool isLoading,
      required final GlobalKey<FormState> formKey,
      required final TextEditingController amount,
      required final TextEditingController comment,
      required final DateTime date,
      required final Contract? contract,
      required final Payment? payment}) = _$PaymentCreateStateData;
  const PaymentCreateStateData._() : super._();

  bool get isLoading;
  GlobalKey<FormState> get formKey;
  TextEditingController get amount;
  TextEditingController get comment;
  DateTime get date;
  Contract? get contract;
  Payment? get payment;
  @JsonKey(ignore: true)
  _$$PaymentCreateStateDataCopyWith<_$PaymentCreateStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
