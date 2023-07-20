// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Region _$$_RegionFromJson(Map<String, dynamic> json) => _$_Region(
      id: json['id'] as int,
      name: json['name'] as String,
      level: json['level'] as int,
      childrenCount: json['children_count'] as int,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$$_RegionToJson(_$_Region instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'children_count': instance.childrenCount,
      'full_name': instance.fullName,
    };
