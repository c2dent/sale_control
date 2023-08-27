// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Office _$$_OfficeFromJson(Map<String, dynamic> json) => _$_Office(
      id: json['id'] as int,
      title: json['title'] as String,
      filterCount: json['filter_count'] as int,
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$$_OfficeToJson(_$_Office instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'filter_count': instance.filterCount,
      'balance': instance.balance,
    };
