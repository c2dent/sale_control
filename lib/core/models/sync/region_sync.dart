import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_sync.freezed.dart';
part 'region_sync.g.dart';

@freezed
class RegionSync with _$RegionSync {
  const factory RegionSync({
    required int id,
    required String name,
    @JsonKey(name: "parent") required int? parentId,
    required int level,
    required int lft,
    required int rght,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime updatedAt,
  }) = _RegionSync;

  factory RegionSync.fromJson(Map<String, dynamic> json) => _$RegionSyncFromJson(json);
}