import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_sync.freezed.dart';
part 'product_sync.g.dart';

@freezed
class ProductSync with _$ProductSync {
  const factory ProductSync({
    required String id,
    required String name,
    @JsonKey(name: "is_new") required bool isNew,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
  }) = _ProductSync;

  factory ProductSync.fromJson(Map<String, dynamic> json) => _$ProductSyncFromJson(json);
}