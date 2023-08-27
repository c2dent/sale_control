import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';

part 'contract_models.freezed.dart';
part 'contract_models.g.dart';

@freezed
class Contract with _$Contract {
  const factory Contract({
    required int id,

    required Client client,
    required Region region,
    required Employee advertiser,

    @JsonKey(name: "count_filter") required int countFilter,

    @JsonKey(name: "month_count") required int monthCount,
    @JsonKey(name: "cost_price") required int costPrice,
    @JsonKey(name: "debt_on_month") required int debtOnMonth,
    @JsonKey(name: "price_amount") required int priceAmount,
    required User creator,

    @JsonKey(name: "paid_months") required int paidMonths,
    @JsonKey(name: "paid_amount") required int paidAmount,
    @JsonKey(name: "setup_date") required DateTime setupDate,
    @JsonKey(name: "is_confirm") required bool isConfirm,
    @JsonKey(name: "confirm_date") required DateTime? confirmDate,
    required bool closed,

    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
}