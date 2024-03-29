import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';

part 'contract_models.freezed.dart';

part 'contract_models.g.dart';

@freezed
class Contract with _$Contract {
  const factory Contract({
    required String id,
    required Client client,
    required Employee advertiser,
    @JsonKey(name: "count_filter") required int countFilter,
    @JsonKey(name: "month_count") required int monthCount,
    @JsonKey(name: "cost_price") required int costPrice,
    @JsonKey(name: "debt_on_month") required int debtOnMonth,
    @JsonKey(name: "price_amount") required int priceAmount,
    required Employee creator,
    @JsonKey(name: "paid_months") required int paidMonths,
    @JsonKey(name: "paid_amount") required int paidAmount,
    @JsonKey(name: "setup_date") required DateTime setupDate,
    required bool closed,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
}

@freezed
class ContractListItem with _$ContractListItem {
  const factory ContractListItem({
    required String id,
    required String clientName,
    required String clientId,
    required bool closed,
    required DateTime setupDate,
    required int paidAmount,
    required int priceAmount,
    required int monthCount,
    required int paidMonths,
    required String creatorName,
    required bool isSynced,
  }) = _ContractListItem;

  factory ContractListItem.fromJson(Map<String, dynamic> json) => _$ContractListItemFromJson(json);
}

class ContractData {
  final ContractTableData contract;
  final EmployeeTableData creator;
  final ClientTableData client;

  const ContractData({required this.contract, required this.creator, required this.client});

  String get clientName => "${client.firstName} ${client.lastName}";

  String get creatorName => "${creator.firstName} ${creator.lastName}";
}

class ContractDataDetail {
  final ContractTableData contract;
  final EmployeeTableData creator;
  final ClientTableData client;
  final ContractReturnTableData? contractReturn;
  final List<PaymentTableData> payments;
  final List<ServiceTableData> services;
  final RegionTableData region;
  final RegionTableData regionParent;
  final List<EmployeeTableData> employees;

  ContractDataDetail({
    required this.contract,
    required this.creator,
    required this.client,
    required this.payments,
    required this.services,
    required this.region,
    required this.regionParent,
    required this.employees,
    required this.contractReturn,
  });

  String get regionName => "${regionParent.name} > ${region.name}";
}
