import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'service_models.freezed.dart';

part 'service_models.g.dart';

@freezed
class Service with _$Service {
  const factory Service({
    required String id,
    required Contract contract,
    required ServiceType type,
    required String comment,
    required int amount,
    required DateTime date,
    required Employee creator,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}

enum ServiceType {
  @JsonKey(name: "FILTER")
  filter(value: "FILTER", name: "Filter", operationType: "INCOME"),

  @JsonKey(name: "COAL")
  coal(value: "COAL", name: "Komur", operationType: "INCOME"),

  @JsonKey(name: "INCOME")
  income(value: "INCOME", name: "Girdeyji toleg", operationType: "INCOME"),

  @JsonKey(name: "OUTCOME")
  outcome(value: "OUTCOME", name: "Chykdayjy toleg", operationType: "OUTCOME"),

  @JsonKey(name: "ADVERTISER")
  advertising(value: "ADVERTISER", name: "Reklama", operationType: "OUTCOME");

  const ServiceType({
    required this.name,
    required this.value,
    required this.operationType,
  });

  final String name;
  final String value;
  final String operationType;

  static ServiceType getServiceTypeFromString(String? value) {
    for (ServiceType type in ServiceType.values) {
      if (type.value == value) {
        return type;
      }
    }
    return ServiceType.income;
  }
}

class ServiceData {
  final ServiceTableData service;
  final EmployeeTableData creator;
  final ClientTableData client;

  const ServiceData({
    required this.service,
    required this.creator,
    required this.client,
  });

  String get clientName => "${client.firstName} ${client.lastName}";

  String get creatorName => "${creator.firstName} ${creator.lastName}";

  ServiceType get getType => ServiceType.getServiceTypeFromString(service.type);
}

class ServiceDetail {
  final ServiceTableData service;
  final ContractTableData contract;
  final EmployeeTableData creator;
  final ClientTableData client;
  final RegionTableData region;
  final RegionTableData regionParent;

  const ServiceDetail({
    required this.service,
    required this.creator,
    required this.client,
    required this.region,
    required this.regionParent,
    required this.contract,
  });

  String get clientName => "${client.firstName} ${client.lastName}";

  String get creatorName => "${creator.firstName} ${creator.lastName}";

  ServiceType get getType => ServiceType.getServiceTypeFromString(service.type);

  String get regionName => "${regionParent.name} > ${region.name}";
}
