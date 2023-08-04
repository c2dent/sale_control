// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coal_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coal _$CoalFromJson(Map<String, dynamic> json) {
  return _Coal.fromJson(json);
}

/// @nodoc
mixin _$Coal {
  int get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Contract get contract => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoalCopyWith<Coal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoalCopyWith<$Res> {
  factory $CoalCopyWith(Coal value, $Res Function(Coal) then) =
      _$CoalCopyWithImpl<$Res, Coal>;
  @useResult
  $Res call(
      {int id,
      DateTime date,
      Contract contract,
      User creator,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  $ContractCopyWith<$Res> get contract;
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$CoalCopyWithImpl<$Res, $Val extends Coal>
    implements $CoalCopyWith<$Res> {
  _$CoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? contract = null,
    Object? creator = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_CoalCopyWith<$Res> implements $CoalCopyWith<$Res> {
  factory _$$_CoalCopyWith(_$_Coal value, $Res Function(_$_Coal) then) =
      __$$_CoalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime date,
      Contract contract,
      User creator,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});

  @override
  $ContractCopyWith<$Res> get contract;
  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_CoalCopyWithImpl<$Res> extends _$CoalCopyWithImpl<$Res, _$_Coal>
    implements _$$_CoalCopyWith<$Res> {
  __$$_CoalCopyWithImpl(_$_Coal _value, $Res Function(_$_Coal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? contract = null,
    Object? creator = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$_Coal(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_Coal implements _Coal {
  const _$_Coal(
      {required this.id,
      required this.date,
      required this.contract,
      required this.creator,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_Coal.fromJson(Map<String, dynamic> json) => _$$_CoalFromJson(json);

  @override
  final int id;
  @override
  final DateTime date;
  @override
  final Contract contract;
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
    return 'Coal(id: $id, date: $date, contract: $contract, creator: $creator, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, contract, creator, createdAt, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoalCopyWith<_$_Coal> get copyWith =>
      __$$_CoalCopyWithImpl<_$_Coal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoalToJson(
      this,
    );
  }
}

abstract class _Coal implements Coal {
  const factory _Coal(
          {required final int id,
          required final DateTime date,
          required final Contract contract,
          required final User creator,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "modified_at") required final DateTime modifiedAt}) =
      _$_Coal;

  factory _Coal.fromJson(Map<String, dynamic> json) = _$_Coal.fromJson;

  @override
  int get id;
  @override
  DateTime get date;
  @override
  Contract get contract;
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
  _$$_CoalCopyWith<_$_Coal> get copyWith => throw _privateConstructorUsedError;
}
