// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Locality _$LocalityFromJson(Map<String, dynamic> json) {
  return _Locality.fromJson(json);
}

/// @nodoc
mixin _$Locality {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Area get area => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalityCopyWith<Locality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalityCopyWith<$Res> {
  factory $LocalityCopyWith(Locality value, $Res Function(Locality) then) =
      _$LocalityCopyWithImpl<$Res, Locality>;
  @useResult
  $Res call({String id, String name, Area area});

  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class _$LocalityCopyWithImpl<$Res, $Val extends Locality>
    implements $LocalityCopyWith<$Res> {
  _$LocalityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? area = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area {
    return $AreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocalityCopyWith<$Res> implements $LocalityCopyWith<$Res> {
  factory _$$_LocalityCopyWith(
          _$_Locality value, $Res Function(_$_Locality) then) =
      __$$_LocalityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Area area});

  @override
  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class __$$_LocalityCopyWithImpl<$Res>
    extends _$LocalityCopyWithImpl<$Res, _$_Locality>
    implements _$$_LocalityCopyWith<$Res> {
  __$$_LocalityCopyWithImpl(
      _$_Locality _value, $Res Function(_$_Locality) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? area = null,
  }) {
    return _then(_$_Locality(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Locality implements _Locality {
  const _$_Locality({required this.id, required this.name, required this.area});

  factory _$_Locality.fromJson(Map<String, dynamic> json) =>
      _$$_LocalityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Area area;

  @override
  String toString() {
    return 'Locality(id: $id, name: $name, area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locality &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.area, area) || other.area == area));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, area);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalityCopyWith<_$_Locality> get copyWith =>
      __$$_LocalityCopyWithImpl<_$_Locality>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalityToJson(
      this,
    );
  }
}

abstract class _Locality implements Locality {
  const factory _Locality(
      {required final String id,
      required final String name,
      required final Area area}) = _$_Locality;

  factory _Locality.fromJson(Map<String, dynamic> json) = _$_Locality.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Area get area;
  @override
  @JsonKey(ignore: true)
  _$$_LocalityCopyWith<_$_Locality> get copyWith =>
      throw _privateConstructorUsedError;
}
