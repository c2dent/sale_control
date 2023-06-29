// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contract _$$_ContractFromJson(Map<String, dynamic> json) => _$_Contract(
      id: json['id'] as int,
      client: Client.fromJson(json['client'] as Map<String, dynamic>),
      locality: Locality.fromJson(json['locality'] as Map<String, dynamic>),
      advertiser: Employee.fromJson(json['advertiser'] as Map<String, dynamic>),
      taskMaster:
          Employee.fromJson(json['task_master'] as Map<String, dynamic>),
      countFilter: json['count_filter'] as int,
      dueDateOnMonth: json['due_date_on_month'] as int,
      costPrice: json['cost_price'] as int,
      sumContract: json['sum_contract'] as int,
      startContribution: json['start_contribution'] as int,
      setupDate: DateTime.parse(json['setup_date'] as String),
      remainingMonths: json['remaining_months'] as int,
      remainingSum: json['remaining_sum'] as int,
      closed: json['closed'] as bool,
      isConfirm: json['is_confirm'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_ContractToJson(_$_Contract instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client': instance.client,
      'locality': instance.locality,
      'advertiser': instance.advertiser,
      'task_master': instance.taskMaster,
      'count_filter': instance.countFilter,
      'due_date_on_month': instance.dueDateOnMonth,
      'cost_price': instance.costPrice,
      'sum_contract': instance.sumContract,
      'start_contribution': instance.startContribution,
      'setup_date': instance.setupDate.toIso8601String(),
      'remaining_months': instance.remainingMonths,
      'remaining_sum': instance.remainingSum,
      'closed': instance.closed,
      'is_confirm': instance.isConfirm,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
