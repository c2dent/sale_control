import 'package:freezed_annotation/freezed_annotation.dart';

part 'office_sync.freezed.dart';

part 'office_sync.g.dart';

@freezed
class OfficeSync with _$OfficeSync {
  const factory OfficeSync({
    required String id,
    required String title,
    @JsonKey(name: "filter_count") required int filterCount,
    required int balance,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
    @Default(true) isSynced,
  }) = _OfficeSync;

  factory OfficeSync.fromJson(Map<String, dynamic> json) => _$OfficeSyncFromJson(json);
}
