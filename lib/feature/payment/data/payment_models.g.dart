// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      id: json['id'] as int,
      amount: json['amount'] as int,
      remainderAmount: json['remainder_amount'] as String,
      date: DateTime.parse(json['date'] as String),
      contract: Contract.fromJson(json['contract'] as Map<String, dynamic>),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      isConfirm: json['is_confirm'] as bool,
      confirmDate: json['confirm_date'] == null
          ? null
          : DateTime.parse(json['confirm_date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'remainder_amount': instance.remainderAmount,
      'date': instance.date.toIso8601String(),
      'contract': instance.contract,
      'creator': instance.creator,
      'is_confirm': instance.isConfirm,
      'confirm_date': instance.confirmDate?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
