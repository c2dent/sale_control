import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/locality.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';

part 'contract_models.freezed.dart';
part 'contract_models.g.dart';

@freezed
class Contract with _$Contract {
  const factory Contract({
    required int id,
    required Client client,
    required Locality locality,
    required Employee advertiser,
    @JsonKey(name: "task_master") required Employee taskMaster,
    @JsonKey(name: "count_filter") required int countFilter,
    @JsonKey(name: "due_date_on_month") required int dueDateOnMonth,
    @JsonKey(name: "cost_price") required int costPrice,
    @JsonKey(name: "sum_contract") required int sumContract,
    @JsonKey(name: "start_contribution") required int startContribution,
    @JsonKey(name: "setup_date") required DateTime setupDate,
    @JsonKey(name: "remaining_months") required int remainingMonths,
    @JsonKey(name: "remaining_sum") required int remainingSum,
    required bool closed,
    @JsonKey(name: "is_confirm") required bool isConfirm,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
}