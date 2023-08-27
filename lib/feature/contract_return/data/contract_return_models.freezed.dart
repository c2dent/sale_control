// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_return_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractReturn _$ContractReturnFromJson(Map<String, dynamic> json) {
  return _ContractReturn.fromJson(json);
}

/// @nodoc
mixin _$ContractReturn {
  int get id => throw _privateConstructorUsedError;
  Contract get contract => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractReturnCopyWith<ContractReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractReturnCopyWith<$Res> {
  factory $ContractReturnCopyWith(
          ContractReturn value, $Res Function(ContractReturn) then) =
      _$ContractReturnCopyWithImpl<$Res, ContractReturn>;
  @useResult
  $Res call(
      {int id,
      Contract contract,
      DateTime date,
      User creator,
      String? reason,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  $ContractCopyWith<$Res> get contract;
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$ContractReturnCopyWithImpl<$Res, $Val extends ContractReturn>
    implements $ContractReturnCopyWith<$Res> {
  _$ContractReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contract = null,
    Object? date = null,
    Object? creator = null,
    Object? reason = freezed,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ContractReturnCopyWith<$Res>
    implements $ContractReturnCopyWith<$Res> {
  factory _$$_ContractReturnCopyWith(
          _$_ContractReturn value, $Res Function(_$_ContractReturn) then) =
      __$$_ContractReturnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Contract contract,
      DateTime date,
      User creator,
      String? reason,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  @override
  $ContractCopyWith<$Res> get contract;
  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_ContractReturnCopyWithImpl<$Res>
    extends _$ContractReturnCopyWithImpl<$Res, _$_ContractReturn>
    implements _$$_ContractReturnCopyWith<$Res> {
  __$$_ContractReturnCopyWithImpl(
      _$_ContractReturn _value, $Res Function(_$_ContractReturn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contract = null,
    Object? date = null,
    Object? creator = null,
    Object? reason = freezed,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$_ContractReturn(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_ContractReturn implements _ContractReturn {
  const _$_ContractReturn(
      {required this.id,
      required this.contract,
      required this.date,
      required this.creator,
      this.reason,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_ContractReturn.fromJson(Map<String, dynamic> json) =>
      _$$_ContractReturnFromJson(json);

  @override
  final int id;
  @override
  final Contract contract;
  @override
  final DateTime date;
  @override
  final User creator;
  @override
  final String? reason;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'ContractReturn(id: $id, contract: $contract, date: $date, creator: $creator, reason: $reason, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractReturn &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, contract, date, creator, reason, createdAt, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractReturnCopyWith<_$_ContractReturn> get copyWith =>
      __$$_ContractReturnCopyWithImpl<_$_ContractReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractReturnToJson(
      this,
    );
  }
}

abstract class _ContractReturn implements ContractReturn {
  const factory _ContractReturn(
          {required final int id,
          required final Contract contract,
          required final DateTime date,
          required final User creator,
          final String? reason,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "modified_at") required final DateTime modifiedAt}) =
      _$_ContractReturn;

  factory _ContractReturn.fromJson(Map<String, dynamic> json) =
      _$_ContractReturn.fromJson;

  @override
  int get id;
  @override
  Contract get contract;
  @override
  DateTime get date;
  @override
  User get creator;
  @override
  String? get reason;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContractReturnCopyWith<_$_ContractReturn> get copyWith =>
      throw _privateConstructorUsedError;
}
