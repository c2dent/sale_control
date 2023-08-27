// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Operation _$OperationFromJson(Map<String, dynamic> json) {
  return _Operation.fromJson(json);
}

/// @nodoc
mixin _$Operation {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "operation_type")
  String get operationType => throw _privateConstructorUsedError;
  @JsonKey(name: "source_office")
  Office get sourceOffice => throw _privateConstructorUsedError;
  @JsonKey(name: "target_office")
  Office get targetOffice => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationCopyWith<Operation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationCopyWith<$Res> {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) then) =
      _$OperationCopyWithImpl<$Res, Operation>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "operation_type") String operationType,
      @JsonKey(name: "source_office") Office sourceOffice,
      @JsonKey(name: "target_office") Office targetOffice,
      DateTime date,
      int amount,
      User creator,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  $OfficeCopyWith<$Res> get sourceOffice;
  $OfficeCopyWith<$Res> get targetOffice;
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$OperationCopyWithImpl<$Res, $Val extends Operation>
    implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? operationType = null,
    Object? sourceOffice = null,
    Object? targetOffice = null,
    Object? date = null,
    Object? amount = null,
    Object? creator = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceOffice: null == sourceOffice
          ? _value.sourceOffice
          : sourceOffice // ignore: cast_nullable_to_non_nullable
              as Office,
      targetOffice: null == targetOffice
          ? _value.targetOffice
          : targetOffice // ignore: cast_nullable_to_non_nullable
              as Office,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
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
  $OfficeCopyWith<$Res> get sourceOffice {
    return $OfficeCopyWith<$Res>(_value.sourceOffice, (value) {
      return _then(_value.copyWith(sourceOffice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficeCopyWith<$Res> get targetOffice {
    return $OfficeCopyWith<$Res>(_value.targetOffice, (value) {
      return _then(_value.copyWith(targetOffice: value) as $Val);
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
abstract class _$$_OperationCopyWith<$Res> implements $OperationCopyWith<$Res> {
  factory _$$_OperationCopyWith(
          _$_Operation value, $Res Function(_$_Operation) then) =
      __$$_OperationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "operation_type") String operationType,
      @JsonKey(name: "source_office") Office sourceOffice,
      @JsonKey(name: "target_office") Office targetOffice,
      DateTime date,
      int amount,
      User creator,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  @override
  $OfficeCopyWith<$Res> get sourceOffice;
  @override
  $OfficeCopyWith<$Res> get targetOffice;
  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_OperationCopyWithImpl<$Res>
    extends _$OperationCopyWithImpl<$Res, _$_Operation>
    implements _$$_OperationCopyWith<$Res> {
  __$$_OperationCopyWithImpl(
      _$_Operation _value, $Res Function(_$_Operation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? operationType = null,
    Object? sourceOffice = null,
    Object? targetOffice = null,
    Object? date = null,
    Object? amount = null,
    Object? creator = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$_Operation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceOffice: null == sourceOffice
          ? _value.sourceOffice
          : sourceOffice // ignore: cast_nullable_to_non_nullable
              as Office,
      targetOffice: null == targetOffice
          ? _value.targetOffice
          : targetOffice // ignore: cast_nullable_to_non_nullable
              as Office,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
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
class _$_Operation implements _Operation {
  const _$_Operation(
      {required this.id,
      @JsonKey(name: "operation_type") required this.operationType,
      @JsonKey(name: "source_office") required this.sourceOffice,
      @JsonKey(name: "target_office") required this.targetOffice,
      required this.date,
      required this.amount,
      required this.creator,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_Operation.fromJson(Map<String, dynamic> json) =>
      _$$_OperationFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "operation_type")
  final String operationType;
  @override
  @JsonKey(name: "source_office")
  final Office sourceOffice;
  @override
  @JsonKey(name: "target_office")
  final Office targetOffice;
  @override
  final DateTime date;
  @override
  final int amount;
  @override
  final User creator;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'Operation(id: $id, operationType: $operationType, sourceOffice: $sourceOffice, targetOffice: $targetOffice, date: $date, amount: $amount, creator: $creator, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Operation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.sourceOffice, sourceOffice) ||
                other.sourceOffice == sourceOffice) &&
            (identical(other.targetOffice, targetOffice) ||
                other.targetOffice == targetOffice) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, operationType, sourceOffice,
      targetOffice, date, amount, creator, createdAt, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperationCopyWith<_$_Operation> get copyWith =>
      __$$_OperationCopyWithImpl<_$_Operation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperationToJson(
      this,
    );
  }
}

abstract class _Operation implements Operation {
  const factory _Operation(
          {required final int id,
          @JsonKey(name: "operation_type") required final String operationType,
          @JsonKey(name: "source_office") required final Office sourceOffice,
          @JsonKey(name: "target_office") required final Office targetOffice,
          required final DateTime date,
          required final int amount,
          required final User creator,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "modified_at") required final DateTime modifiedAt}) =
      _$_Operation;

  factory _Operation.fromJson(Map<String, dynamic> json) =
      _$_Operation.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "operation_type")
  String get operationType;
  @override
  @JsonKey(name: "source_office")
  Office get sourceOffice;
  @override
  @JsonKey(name: "target_office")
  Office get targetOffice;
  @override
  DateTime get date;
  @override
  int get amount;
  @override
  User get creator;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$_OperationCopyWith<_$_Operation> get copyWith =>
      throw _privateConstructorUsedError;
}
