import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/mappers/client_mapper.dart';
import 'package:hasap_admin/core/mappers/employee_mapper.dart';
import 'package:hasap_admin/core/mappers/region_mapper.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/client_table.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:injectable/injectable.dart';

part 'client_dao.g.dart';

@injectable
@DriftAccessor(tables: [ClientTable])
class ClientDao extends DatabaseAccessor<AppDatabase> with _$ClientDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  ClientDao(AppDatabase db) : super(db);

  Future<Either<DriftRequestError<DefaultDriftError>, List<Client>>> getAllClients() async {
    return await _errorHandler.processRequest(() async {
      final queryRows = await (select(db.clientTable)
            ..where((tbl) => tbl.isDeleted.equals(false))
            ..orderBy([(t) => OrderingTerm(expression: t.createdAt)]))
          .join([
        leftOuterJoin(db.employeeTable, db.employeeTable.id.equalsExp(clientTable.creatorId), useColumns: true),
        leftOuterJoin(db.regionTable, regionTable.id.equalsExp(clientTable.regionId), useColumns: true),
      ]).get();

      final clients = await Future.wait(queryRows.map((row) async {
        ClientTableData client = row.readTable(clientTable);
        RegionTableData regionTableData = row.readTable(regionTable);
        EmployeeTableData employeeTableData = row.readTable(db.employeeTable);

        final contracts = await (select(db.contractTable)..where((tbl) => tbl.clientId.equals(client.id) & tbl.closed.equals(false))).get();
        int count = await (select(db.regionTable)..where((tbl) => tbl.parentId.equals(client.regionId))).get().then((value) => value.length);

        Region region = RegionSyncMapper.fromRegionTableData(regionTableData, count);
        Employee employee = EmployeeMapper.fromEmployeeTableData(employeeTableData);

        return ClientMapper.fromClientData(client: client, region: region, employee: employee, haveDebt: contracts.isNotEmpty);
      }));

      return clients;
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, String>> insertClient(ClientTableCompanion client) async =>
      await _errorHandler.processRequest(() async {
        await into(db.clientTable).insert(client);
        return client.id.value;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateClient(ClientTableCompanion client) async {
    return await _errorHandler.processRequest(() async {
      bool have = await (select(db.clientTable)..where((tbl) => tbl.id.equals(client.id.value))).get().then((value) => value.isNotEmpty);
      if (!have) throw DriftError("Mushderi tapylmady");
      return await update(db.clientTable).replace(client);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, ClientTableData?>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.clientTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty ? result.right.first : null);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteClient(String id) async {
    String query = "UPDATE client_table SET is_deleted = ?, is_synced = ? WHERE id = ?";

    return await _errorHandler.processRequest(() async {
      await customStatement(query, [true, false, id]);
      return true;
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedClient() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from client_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update client_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
