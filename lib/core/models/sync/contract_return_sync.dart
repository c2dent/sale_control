import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_return_sync.freezed.dart';

part 'contract_return_sync.g.dart';

@freezed
class ContractReturnSync with _$ContractReturnSync {
  const factory ContractReturnSync({
    required String id,
    @JsonKey(name: "contract") required String contractId,
    @JsonKey(name: "creator") required String creatorId,
    @JsonKey(name: "office") required String officeId,
    @JsonKey(name: "reason") required String reason,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _ContractReturnSync;

  factory ContractReturnSync.fromJson(Map<String, dynamic> json) => _$ContractReturnSyncFromJson(json);
}
