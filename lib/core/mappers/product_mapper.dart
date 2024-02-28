import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../models/sync/product_sync.dart';
import '../storage/datebase/app_database.dart';

@injectable
class ProductMapper {
  ProductTableCompanion fromProductSync(ProductSync item) {
    return ProductTableCompanion(
      id: Value(item.id),
      name: Value(item.name),
      isNew: Value(item.isNew),
      isDeleted: Value(item.isDeleted),
      modifiedAt: Value(item.modifiedAt),
      createdAt: Value(item.createdAt),
      isSynced: const Value(true),
    );
  }
}
