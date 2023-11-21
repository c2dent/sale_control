import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

part 'contract_return_models.freezed.dart';

part 'contract_return_models.g.dart';

@freezed
class ContractReturn with _$ContractReturn {
  const factory ContractReturn({
    required String id,
    required Contract contract,
    required DateTime date,
    required Employee creator,
    String? reason,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _ContractReturn;

  factory ContractReturn.fromJson(Map<String, dynamic> json) => _$ContractReturnFromJson(json);
}

class ContractReturnData {
  final ContractReturnTableData contractReturn;
  final ContractTableData contract;
  final EmployeeTableData creator;
  final ClientTableData client;

  const ContractReturnData({
    required this.contract,
    required this.creator,
    required this.contractReturn,
    required this.client,
  });

  String get clientName => "${client.firstName} ${client.lastName}";

  String get creatorName => "${creator.firstName} ${creator.lastName}";
}
