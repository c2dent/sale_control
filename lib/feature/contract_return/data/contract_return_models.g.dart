// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_return_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractReturn _$$_ContractReturnFromJson(Map<String, dynamic> json) =>
    _$_ContractReturn(
      id: json['id'] as int,
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_ContractReturnToJson(_$_ContractReturn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contract': instance.contract,
      'date': instance.date.toIso8601String(),
      'creator': instance.creator,
      'reason': instance.reason,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
