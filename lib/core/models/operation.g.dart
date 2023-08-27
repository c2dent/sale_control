// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Operation _$$_OperationFromJson(Map<String, dynamic> json) => _$_Operation(
      id: json['id'] as int,
      operationType: json['operation_type'] as String,
      sourceOffice:
          Office.fromJson(json['source_office'] as Map<String, dynamic>),
      targetOffice:
          Office.fromJson(json['target_office'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_OperationToJson(_$_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'operation_type': instance.operationType,
      'source_office': instance.sourceOffice,
      'target_office': instance.targetOffice,
      'date': instance.date.toIso8601String(),
      'amount': instance.amount,
      'creator': instance.creator,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
