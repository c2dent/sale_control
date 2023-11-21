import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_sync.freezed.dart';

part 'payment_sync.g.dart';

@freezed
class PaymentSync with _$PaymentSync {
  const factory PaymentSync({
    required String id,
    @JsonKey(name: "paid_amount") required int paidAmount,
    required DateTime date,
    @JsonKey(name: "operation") required String operationId,
    @JsonKey(name: "contract") required String contractId,
    @JsonKey(name: "office") required String officeId,
    @JsonKey(name: "creator") required String creatorId,
    required String? comment,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _PaymentSync;

  factory PaymentSync.fromJson(Map<String, dynamic> json) => _$PaymentSyncFromJson(json);
}
