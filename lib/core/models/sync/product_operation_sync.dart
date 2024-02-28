import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_operation_sync.freezed.dart';
part 'product_operation_sync.g.dart';

@freezed
class ProductOperationSync with _$ProductOperationSync {
  const factory ProductOperationSync({
    required String id,
    @JsonKey(name: "product_id") required String productId,
    @JsonKey(name: "admission_id") required String admissionId,
    @JsonKey(name: "source_office_id") required String sourceOfficeId,
    @JsonKey(name: "target_office_id") required String targetOfficeId,
    @JsonKey(name: "operation_type") required String operationType,
    required int count,
    required double price,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "is_deleted") required bool isDeleted,
  }) = _ProductOperationSync;

  factory ProductOperationSync.fromJson(Map<String, dynamic> json) => _$ProductOperationSyncFromJson(json);
}