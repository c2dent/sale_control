// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Locality _$$_LocalityFromJson(Map<String, dynamic> json) => _$_Locality(
      id: json['id'] as String,
      name: json['name'] as String,
      area: Area.fromJson(json['area'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocalityToJson(_$_Locality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'area': instance.area,
    };
