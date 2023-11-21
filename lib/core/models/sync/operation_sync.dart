import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/core/storage/datebase/tables/operation_type.dart';

part 'operation_sync.freezed.dart';

part 'operation_sync.g.dart';

@freezed
class OperationSync with _$OperationSync {
  const factory OperationSync({
    required String id,
    @JsonKey(name: "operation_type") required String operationType,
    required DateTime date,
    required int amount,
    @JsonKey(name: "source_office") required String sourceOfficeId,
    @JsonKey(name: "target_office") required String? targetOfficeId,
    @JsonKey(name: "creator") required String creatorId,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _OperationSync;

  factory OperationSync.fromJson(Map<String, dynamic> json) => _$OperationSyncFromJson(json);
}
