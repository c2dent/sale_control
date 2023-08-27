// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      id: json['id'] as int,
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      type: $enumDecode(_$ServiceTypeEnumMap, json['type']),
      comment: json['comment'] as String,
      amount: json['amount'] as int,
      date: DateTime.parse(json['date'] as String),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contract': instance.contract,
      'type': _$ServiceTypeEnumMap[instance.type]!,
      'comment': instance.comment,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'creator': instance.creator,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };

const _$ServiceTypeEnumMap = {
  ServiceType.FILTER: 'FILTER',
  ServiceType.COAL: 'COAL',
};
