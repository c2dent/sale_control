// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coal_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coal _$$_CoalFromJson(Map<String, dynamic> json) => _$_Coal(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_CoalToJson(_$_Coal instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'contract': instance.contract,
      'creator': instance.creator,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
