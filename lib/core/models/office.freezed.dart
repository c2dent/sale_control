// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'office.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Office _$OfficeFromJson(Map<String, dynamic> json) {
  return _Office.fromJson(json);
}

/// @nodoc
mixin _$Office {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "filter_count")
  int get filterCount => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficeCopyWith<Office> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficeCopyWith<$Res> {
  factory $OfficeCopyWith(Office value, $Res Function(Office) then) =
      _$OfficeCopyWithImpl<$Res, Office>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "filter_count") int filterCount,
      int balance});
}

/// @nodoc
class _$OfficeCopyWithImpl<$Res, $Val extends Office>
    implements $OfficeCopyWith<$Res> {
  _$OfficeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? filterCount = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      filterCount: null == filterCount
          ? _value.filterCount
          : filterCount // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfficeCopyWith<$Res> implements $OfficeCopyWith<$Res> {
  factory _$$_OfficeCopyWith(_$_Office value, $Res Function(_$_Office) then) =
      __$$_OfficeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "filter_count") int filterCount,
      int balance});
}

/// @nodoc
class __$$_OfficeCopyWithImpl<$Res>
    extends _$OfficeCopyWithImpl<$Res, _$_Office>
    implements _$$_OfficeCopyWith<$Res> {
  __$$_OfficeCopyWithImpl(_$_Office _value, $Res Function(_$_Office) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? filterCount = null,
    Object? balance = null,
  }) {
    return _then(_$_Office(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      filterCount: null == filterCount
          ? _value.filterCount
          : filterCount // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Office implements _Office {
  const _$_Office(
      {required this.id,
      required this.title,
      @JsonKey(name: "filter_count") required this.filterCount,
      required this.balance});

  factory _$_Office.fromJson(Map<String, dynamic> json) =>
      _$$_OfficeFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: "filter_count")
  final int filterCount;
  @override
  final int balance;

  @override
  String toString() {
    return 'Office(id: $id, title: $title, filterCount: $filterCount, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Office &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.filterCount, filterCount) ||
                other.filterCount == filterCount) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, filterCount, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfficeCopyWith<_$_Office> get copyWith =>
      __$$_OfficeCopyWithImpl<_$_Office>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfficeToJson(
      this,
    );
  }
}

abstract class _Office implements Office {
  const factory _Office(
      {required final int id,
      required final String title,
      @JsonKey(name: "filter_count") required final int filterCount,
      required final int balance}) = _$_Office;

  factory _Office.fromJson(Map<String, dynamic> json) = _$_Office.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: "filter_count")
  int get filterCount;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_OfficeCopyWith<_$_Office> get copyWith =>
      throw _privateConstructorUsedError;
}
