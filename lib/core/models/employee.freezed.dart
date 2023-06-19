// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "post_type")
  String get postType => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get phone2 => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "post_type") String postType,
      String phone,
      String? phone2,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? postType = null,
    Object? phone = null,
    Object? phone2 = freezed,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$$_EmployeeCopyWith(
          _$_Employee value, $Res Function(_$_Employee) then) =
      __$$_EmployeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "post_type") String postType,
      String phone,
      String? phone2,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt});
}

/// @nodoc
class __$$_EmployeeCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$_Employee>
    implements _$$_EmployeeCopyWith<$Res> {
  __$$_EmployeeCopyWithImpl(
      _$_Employee _value, $Res Function(_$_Employee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? postType = null,
    Object? phone = null,
    Object? phone2 = freezed,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$_Employee(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
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
class _$_Employee implements _Employee {
  const _$_Employee(
      {required this.id,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      @JsonKey(name: "post_type") required this.postType,
      required this.phone,
      required this.phone2,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt});

  factory _$_Employee.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "post_type")
  final String postType;
  @override
  final String phone;
  @override
  final String? phone2;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'Employee(id: $id, firstName: $firstName, lastName: $lastName, postType: $postType, phone: $phone, phone2: $phone2, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Employee &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      postType, phone, phone2, createdAt, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      __$$_EmployeeCopyWithImpl<_$_Employee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
          {required final int id,
          @JsonKey(name: "first_name") required final String firstName,
          @JsonKey(name: "last_name") required final String lastName,
          @JsonKey(name: "post_type") required final String postType,
          required final String phone,
          required final String? phone2,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "modified_at") required final DateTime modifiedAt}) =
      _$_Employee;

  factory _Employee.fromJson(Map<String, dynamic> json) = _$_Employee.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "post_type")
  String get postType;
  @override
  String get phone;
  @override
  String? get phone2;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}
