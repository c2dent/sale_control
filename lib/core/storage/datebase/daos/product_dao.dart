import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../arch/drift_error_handler/drift_error_handler.dart';
import '../../../../arch/drift_error_handler/models/drift_error_models.dart';
import '../../../../arch/functional_models/either.dart';
import '../app_database.dart';
import '../tables/product_table.dart';

part 'product_dao.g.dart';

@injectable
@DriftAccessor(tables: [ProductTable])
class ProductDao extends DatabaseAccessor<AppDatabase> with _$ProductDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  ProductDao(super.attachedDatabase);

  Future<Either<DriftRequestError<DefaultDriftError>, String>> insertProduct(ProductTableCompanion product) async =>
      await _errorHandler.processRequest(() async {
        await into(db.productTable).insert(product);
        return product.id.value;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateProduct(ProductTableCompanion table) async => await _errorHandler.processRequest(() async {
    bool have = await (select(db.productTable)..where((tbl) => tbl.id.equals(table.id.value))).get().then((value) => value.isNotEmpty);

    if (!have) throw DriftError("Tovar tapylmady");
    return await update(db.productTable).replace(table);
  });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.productTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteProduct(String id) async => await _errorHandler.processRequest(() async {
    bool have = await (select(db.productTable)..where((tbl) => tbl.id.equals(id))).get().then((value) => value.isNotEmpty);

    if (!have) throw DriftError("Tovar tapylmady");
    String query = "UPDATE product_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
    await customStatement(query, [true, false, id]);
    return true;
  });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from product_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update product_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
