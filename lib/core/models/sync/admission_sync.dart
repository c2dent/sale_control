import 'package:freezed_annotation/freezed_annotation.dart';

part 'admission_sync.freezed.dart';

part 'admission_sync.g.dart';

@freezed
class AdmissionSync with _$AdmissionSync {
  const factory AdmissionSync({
    required String id,
    required DateTime date,
    required String description,
    @JsonKey(name: "office_id") required String officeId,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
  }) = _AdmissionSync;

  factory AdmissionSync.fromJson(Map<String, dynamic> json) => _$AdmissionSyncFromJson(json);
}
