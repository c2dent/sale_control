// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      id: json['id'] as int,
      amount: json['amount'] as int,
      paidAmount: json['paid_amount'] as int,
      date: DateTime.parse(json['date'] as String),
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'paid_amount': instance.paidAmount,
      'date': instance.date.toIso8601String(),
      'contract': instance.contract,
      'creator': instance.creator,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
