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
  String get sum => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Client get client => throw _privateConstructorUsedError;
  Contract get contract => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "expected_sum")
  String get expectedSum => throw _privateConstructorUsedError;
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
      String sum,
      DateTime date,
      Client client,
      Contract contract,
      String status,
      @JsonKey(name: "expected_sum") String expectedSum,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  $ClientCopyWith<$Res> get client;
  $ContractCopyWith<$Res> get contract;
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
    Object? sum = null,
    Object? date = null,
    Object? client = null,
    Object? contract = null,
    Object? status = null,
    Object? expectedSum = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expectedSum: null == expectedSum
          ? _value.expectedSum
          : expectedSum // ignore: cast_nullable_to_non_nullable
              as String,
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
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractCopyWith<$Res> get contract {
    return $ContractCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
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
      String sum,
      DateTime date,
      Client client,
      Contract contract,
      String status,
      @JsonKey(name: "expected_sum") String expectedSum,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $ContractCopyWith<$Res> get contract;
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
    Object? sum = null,
    Object? date = null,
    Object? client = null,
    Object? contract = null,
    Object? status = null,
    Object? expectedSum = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$_Payment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expectedSum: null == expectedSum
          ? _value.expectedSum
          : expectedSum // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.sum,
      required this.date,
      required this.client,
      required this.contract,
      required this.status,
      @JsonKey(name: "expected_sum") required this.expectedSum,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFromJson(json);

  @override
  final int id;
  @override
  final String sum;
  @override
  final DateTime date;
  @override
  final Client client;
  @override
  final Contract contract;
  @override
  final String status;
  @override
  @JsonKey(name: "expected_sum")
  final String expectedSum;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'Payment(id: $id, sum: $sum, date: $date, client: $client, contract: $contract, status: $status, expectedSum: $expectedSum, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expectedSum, expectedSum) ||
                other.expectedSum == expectedSum) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sum, date, client, contract,
      status, expectedSum, createdAt, modifiedAt);

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
          required final String sum,
          required final DateTime date,
          required final Client client,
          required final Contract contract,
          required final String status,
          @JsonKey(name: "expected_sum") required final String expectedSum,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "modified_at") required final DateTime modifiedAt}) =
      _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  int get id;
  @override
  String get sum;
  @override
  DateTime get date;
  @override
  Client get client;
  @override
  Contract get contract;
  @override
  String get status;
  @override
  @JsonKey(name: "expected_sum")
  String get expectedSum;
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
