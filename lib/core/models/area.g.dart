// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Area _$$_AreaFromJson(Map<String, dynamic> json) => _$_Area(
      id: json['id'] as String,
      name: json['name'] as String,
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AreaToJson(_$_Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': instance.region,
    };
