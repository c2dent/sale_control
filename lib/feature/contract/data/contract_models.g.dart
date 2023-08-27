// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contract _$$_ContractFromJson(Map<String, dynamic> json) => _$_Contract(
      id: json['id'] as int,
      client: Client.fromJson(json['client'] as Map<String, dynamic>),
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      advertiser: Employee.fromJson(json['advertiser'] as Map<String, dynamic>),
      countFilter: json['count_filter'] as int,
      monthCount: json['month_count'] as int,
      costPrice: json['cost_price'] as int,
      debtOnMonth: json['debt_on_month'] as int,
      priceAmount: json['price_amount'] as int,
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      paidMonths: json['paid_months'] as int,
      paidAmount: json['paid_amount'] as int,
      setupDate: DateTime.parse(json['setup_date'] as String),
      isConfirm: json['is_confirm'] as bool,
      confirmDate: json['confirm_date'] == null
          ? null
          : DateTime.parse(json['confirm_date'] as String),
      closed: json['closed'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_ContractToJson(_$_Contract instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client': instance.client,
      'region': instance.region,
      'advertiser': instance.advertiser,
      'count_filter': instance.countFilter,
      'month_count': instance.monthCount,
      'cost_price': instance.costPrice,
      'debt_on_month': instance.debtOnMonth,
      'price_amount': instance.priceAmount,
      'creator': instance.creator,
      'paid_months': instance.paidMonths,
      'paid_amount': instance.paidAmount,
      'setup_date': instance.setupDate.toIso8601String(),
      'is_confirm': instance.isConfirm,
      'confirm_date': instance.confirmDate?.toIso8601String(),
      'closed': instance.closed,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
