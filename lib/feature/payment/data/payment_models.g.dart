// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      id: json['id'] as int,
      sum: json['sum'] as String,
      date: DateTime.parse(json['date'] as String),
      client: Client.fromJson(json['client'] as Map<String, dynamic>),
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      status: json['status'] as String,
      expectedSum: json['expected_sum'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sum': instance.sum,
      'date': instance.date.toIso8601String(),
      'client': instance.client,
      'contract': instance.contract,
      'status': instance.status,
      'expected_sum': instance.expectedSum,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
