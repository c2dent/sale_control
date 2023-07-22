// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  int get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "remainder_amount")
  String get remainderAmount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Contract get contract => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;
  @JsonKey(name: "is_confirm")
  bool get isConfirm => throw _privateConstructorUsedError;
  @JsonKey(name: "confirm_date")
  DateTime? get confirmDate => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {int id,
      int amount,
      @JsonKey(name: "remainder_amount") String remainderAmount,
      DateTime date,
      Contract contract,
      User creator,
      @JsonKey(name: "is_confirm") bool isConfirm,
      @JsonKey(name: "confirm_date") DateTime? confirmDate,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  $ContractCopyWith<$Res> get contract;
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? remainderAmount = null,
    Object? date = null,
    Object? contract = null,
    Object? creator = null,
    Object? isConfirm = null,
    Object? confirmDate = freezed,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      remainderAmount: null == remainderAmount
          ? _value.remainderAmount
          : remainderAmount // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      isConfirm: null == isConfirm
          ? _value.isConfirm
          : isConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmDate: freezed == confirmDate
          ? _value.confirmDate
          : confirmDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractCopyWith<$Res> get contract {
    return $ContractCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get creator {
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int amount,
      @JsonKey(name: "remainder_amount") String remainderAmount,
      DateTime date,
      Contract contract,
      User creator,
      @JsonKey(name: "is_confirm") bool isConfirm,
      @JsonKey(name: "confirm_date") DateTime? confirmDate,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  @override
  $ContractCopyWith<$Res> get contract;
  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? remainderAmount = null,
    Object? date = null,
    Object? contract = null,
    Object? creator = null,
    Object? isConfirm = null,
    Object? confirmDate = freezed,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$_Payment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      remainderAmount: null == remainderAmount
          ? _value.remainderAmount
          : remainderAmount // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      isConfirm: null == isConfirm
          ? _value.isConfirm
          : isConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmDate: freezed == confirmDate
          ? _value.confirmDate
          : confirmDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment implements _Payment {
  const _$_Payment(
      {required this.id,
      required this.amount,
      @JsonKey(name: "remainder_amount") required this.remainderAmount,
      required this.date,
      required this.contract,
      required this.creator,
      @JsonKey(name: "is_confirm") required this.isConfirm,
      @JsonKey(name: "confirm_date") this.confirmDate,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFromJson(json);

  @override
  final int id;
  @override
  final int amount;
  @override
  @JsonKey(name: "remainder_amount")
  final String remainderAmount;
  @override
  final DateTime date;
  @override
  final Contract contract;
  @override
  final User creator;
  @override
  @JsonKey(name: "is_confirm")
  final bool isConfirm;
  @override
  @JsonKey(name: "confirm_date")
  final DateTime? confirmDate;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'Payment(id: $id, amount: $amount, remainderAmount: $remainderAmount, date: $date, contract: $contract, creator: $creator, isConfirm: $isConfirm, confirmDate: $confirmDate, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.remainderAmount, remainderAmount) ||
                other.remainderAmount == remainderAmount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.isConfirm, isConfirm) ||
                other.isConfirm == isConfirm) &&
            (identical(other.confirmDate, confirmDate) ||
                other.confirmDate == confirmDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, remainderAmount,
      date, contract, creator, isConfirm, confirmDate, createdAt, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final int id,
      required final int amount,
      @JsonKey(name: "remainder_amount") required final String remainderAmount,
      required final DateTime date,
      required final Contract contract,
      required final User creator,
      @JsonKey(name: "is_confirm") required final bool isConfirm,
      @JsonKey(name: "confirm_date") final DateTime? confirmDate,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "modified_at")
      required final DateTime modifiedAt}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  int get id;
  @override
  int get amount;
  @override
  @JsonKey(name: "remainder_amount")
  String get remainderAmount;
  @override
  DateTime get date;
  @override
  Contract get contract;
  @override
  User get creator;
  @override
  @JsonKey(name: "is_confirm")
  bool get isConfirm;
  @override
  @JsonKey(name: "confirm_date")
  DateTime? get confirmDate;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}
