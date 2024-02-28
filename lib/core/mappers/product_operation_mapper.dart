import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/product_operation_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductOperationMapper {
  ProductOperationTableCompanion fromProductOperationSync(ProductOperationSync item) {
    return ProductOperationTableCompanion(
      id: Value(item.id),
      sourceOfficeId: Value(item.sourceOfficeId),
      admissionId: Value(item.admissionId),
      targetOfficeId: Value(item.targetOfficeId),
      operationType: Value(item.operationType),
      productId: Value(item.productId),
      count: Value(item.count),
      price: Value(item.price),
      createdAt: Value(item.createdAt),
      modifiedAt: Value(item.modifiedAt),
      isDeleted: Value(item.isDeleted),
      isSynced: const Value(true),
    );
  }
}
