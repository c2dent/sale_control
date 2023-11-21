import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';

part 'client_models.freezed.dart';

part 'client_models.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required String id,
    @JsonKey(name: "have_debt") required bool haveDebt,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "sur_name") required String? surName,
    required String? description,
    required String phone,
    required String? phone2,
    required Region region,
    required Employee creator,
    required bool isSynced,
    @JsonKey(name: "created_at") required DateTime createdAt,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

class ClientData {
  final RegionTableData region;
  final EmployeeTableData creator;
  final ClientTableData client;

  const ClientData({
    required this.region,
    required this.creator,
    required this.client,
  });
}
