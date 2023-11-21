import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/operation_table.dart';
import 'package:injectable/injectable.dart';

part 'operation_dao.g.dart';

@injectable
@DriftAccessor(tables: [OperationTable])
class OperationDao extends DatabaseAccessor<AppDatabase> with _$OperationDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  OperationDao(AppDatabase db) : super(db);

  Future<Either<DriftRequestError<DefaultDriftError>, String>> insertOperation(OperationTableCompanion operation) async =>
      await _errorHandler.processRequest(() async {
        await into(db.operationTable).insert(operation);
        return operation.id.value;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateOperation(OperationTableCompanion operation) async =>
      await _errorHandler.processRequest(() async {
        bool have = await (select(db.operationTable)..where((tbl) => tbl.id.equals(operation.id.value))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Toleg tapylmady");
        return await update(db.operationTable).replace(operation);
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.operationTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteOperation(String id) async =>
      await _errorHandler.processRequest(() async {
        bool have = await (select(db.operationTable)
          ..where((tbl) => tbl.id.equals(id)))
            .get()
            .then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Toleg tapylmady");
        String query = "UPDATE operation_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [true, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from operation_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update operation_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
