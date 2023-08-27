// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Client _$$_ClientFromJson(Map<String, dynamic> json) => _$_Client(
      id: json['id'] as int,
      haveDebt: json['have_debt'] as bool,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      surName: json['sur_name'] as String?,
      description: json['description'] as String?,
      phone: json['phone'] as String,
      phone2: json['phone2'] as String?,
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$_ClientToJson(_$_Client instance) => <String, dynamic>{
      'id': instance.id,
      'have_debt': instance.haveDebt,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'sur_name': instance.surName,
      'description': instance.description,
      'phone': instance.phone,
      'phone2': instance.phone2,
      'region': instance.region,
      'creator': instance.creator,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
