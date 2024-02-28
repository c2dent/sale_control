import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_sync.freezed.dart';

part 'service_sync.g.dart';

@freezed
class ServiceSync with _$ServiceSync {
  const factory ServiceSync({
    required String id,
    @JsonKey(name: 'contract') required String contractId,
    @JsonKey(name: 'operation') required String operationId,
    @JsonKey(name: 'type') required String type,
    required String comment,
    required int amount,
    required DateTime date,
    @JsonKey(name: "creator") required String creatorId,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _ServiceSync;

  factory ServiceSync.fromJson(Map<String, dynamic> json) => _$ServiceSyncFromJson(json);
}
