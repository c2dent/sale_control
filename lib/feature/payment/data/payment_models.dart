import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'payment_models.freezed.dart';

part 'payment_models.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String id,
    required int amount,
    @JsonKey(name: "paid_amount") required int paidAmount,
    required DateTime date,
    required String operationId,
    required Contract contract,
    required Employee creator,
    required String? comment,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}

class PaymentData {
  final PaymentTableData payment;
  final EmployeeTableData creator;
  final ClientTableData client;
  final RegionTableData region;

  const PaymentData({
    required this.region,
    required this.payment,
    required this.creator,
    required this.client,
  });

  String get clientName => "${client.firstName} ${client.lastName}";

  String get creatorName => "${creator.firstName} ${creator.lastName}";
}

class PaymentDetail {
  final PaymentTableData payment;
  final EmployeeTableData creator;
  final ClientTableData client;
  final ContractTableData contract;
  final RegionTableData region;
  final RegionTableData parentRegion;

  PaymentDetail({required this.payment, required this.creator, required this.client, required this.region, required this.parentRegion, required this.contract});

  String get regionName => "${parentRegion.name} > ${region.name}";
}
