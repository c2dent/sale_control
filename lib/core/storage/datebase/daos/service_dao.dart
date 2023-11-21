import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/service_table.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:injectable/injectable.dart';

part 'service_dao.g.dart';

@injectable
@DriftAccessor(tables: [ServiceTable])
class ServiceDao extends DatabaseAccessor<AppDatabase> with _$ServiceDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  ServiceDao(AppDatabase db) : super(db);

  Future<Either<DriftRequestError<DefaultDriftError>, List<ServiceData>>> getAll() async =>
      await _errorHandler.processRequest(() async => await (select(serviceTable)
            ..where((tbl) => tbl.isDeleted.equals(false))
            ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
          .join([
            leftOuterJoin(db.employeeTable, db.employeeTable.id.equalsExp(serviceTable.creatorId), useColumns: true),
            leftOuterJoin(db.contractTable, db.contractTable.id.equalsExp(serviceTable.contractId), useColumns: true),
            leftOuterJoin(db.clientTable, db.clientTable.id.equalsExp(db.contractTable.clientId), useColumns: true),
          ])
          .map((row) => ServiceData(service: row.readTable(db.serviceTable), creator: row.readTable(db.employeeTable), client: row.readTable(db.clientTable)))
          .get());

  Future<Either<DriftRequestError<DefaultDriftError>, int>> insertService(ServiceTableCompanion companion) async =>
      await _errorHandler.processRequest(() => into(db.serviceTable).insert(companion));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateService(ServiceTableCompanion companion) async =>
      await _errorHandler.processRequest(() => update(db.serviceTable).replace(companion));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.serviceTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteService(String id) async => await _errorHandler.processRequest(() async {
        bool have = await (select(db.serviceTable)..where((tbl) => tbl.id.equals(id))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Hyzmat tapylmady");
        String query = "UPDATE service_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [true, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from service_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update service_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
