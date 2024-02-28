import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../arch/drift_error_handler/drift_error_handler.dart';
import '../../../../arch/drift_error_handler/models/drift_error_models.dart';
import '../../../../arch/functional_models/either.dart';
import '../app_database.dart';
import '../tables/product_operation_table.dart';

part 'product_operation_dao.g.dart';

@injectable
@DriftAccessor(tables: [ProductOperationTable])
class ProductOperationDao extends DatabaseAccessor<AppDatabase> with _$ProductOperationDaoMixin {

  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  ProductOperationDao(super.db);

  Future<Either<DriftRequestError<DefaultDriftError>, String>> insertProductOperation(ProductOperationTableCompanion companion) async =>
      await _errorHandler.processRequest(() async {
        await into(db.productOperationTable).insert(companion);
        return companion.id.value;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateProductOperation(ProductOperationTableCompanion companion) async =>
      await _errorHandler.processRequest(() async {
        bool have = await (select(db.productOperationTable)..where((tbl) => tbl.id.equals(companion.id.value))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Towar tapylmady");
        return await update(db.productOperationTable).replace(companion);
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.productOperationTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteProductOperation(String id) async => await _errorHandler.processRequest(() async {
    bool have = await (select(db.productOperationTable)..where((tbl) => tbl.id.equals(id))).get().then((value) => value.isNotEmpty);

    if (!have) throw DriftError("Towar operasiyasy tapylmady");
    String query = "UPDATE product_operation_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
    await customStatement(query, [true, false, id]);
    return true;
  });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from product_operation_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update product_operation_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
