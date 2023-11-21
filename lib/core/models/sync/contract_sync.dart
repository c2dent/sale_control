import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_sync.freezed.dart';
part 'contract_sync.g.dart';

@freezed
class ContractSync with _$ContractSync {
  const factory ContractSync({
    required String id,
    @JsonKey(name: "office") required String officeId,
    @JsonKey(name: "client") required String clientId,
    @JsonKey(name: "advertiser") required String? advertiserId,
    @JsonKey(name: "creator") required String creatorId,
    @JsonKey(name: "count_filter") required int countFilter,
    @JsonKey(name: "month_count") required int monthCount,
    @JsonKey(name: "cost_price") required int costPrice,
    @JsonKey(name: "debt_on_month") required int debtOnMonth,
    @JsonKey(name: "price_amount") required int priceAmount,
    @JsonKey(name: "paid_months") required int paidMonths,
    @JsonKey(name: "paid_amount") required int paidAmount,
    @JsonKey(name: "setup_date") required DateTime setupDate,
    @JsonKey(name: "closed") required bool closed,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _ContractSync;

  factory ContractSync.fromJson(Map<String, dynamic> json) => _$ContractSyncFromJson(json);
}
