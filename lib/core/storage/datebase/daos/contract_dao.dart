import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/contract_table.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:injectable/injectable.dart';

part 'contract_dao.g.dart';

@injectable
@DriftAccessor(tables: [ContractTable])
class ContractDao extends DatabaseAccessor<AppDatabase> with _$ContractDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  ContractDao(AppDatabase db) : super(db);

  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractData>>> getAllContracts() async =>
      await _errorHandler.processRequest(() async => await (select(db.contractTable)
            ..where((tbl) => tbl.isDeleted.equals(false))
            ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
          .join([
            leftOuterJoin(clientTable, clientTable.id.equalsExp(contractTable.clientId), useColumns: true),
            leftOuterJoin(employeeTable, employeeTable.id.equalsExp(contractTable.creatorId), useColumns: true),
          ])
          .map((row) => ContractData(contract: row.readTable(contractTable), creator: row.readTable(employeeTable), client: row.readTable(clientTable)))
          .get());

  Future<Either<DriftRequestError<DefaultDriftError>, int>> insertContract(ContractTableCompanion contract) async =>
      await _errorHandler.processRequest(() => into(db.contractTable).insert(contract));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateContract(ContractTableCompanion contract) async =>
      await _errorHandler.processRequest(() async {
        bool have = await (select(db.contractTable)..where((tbl) => tbl.id.equals(contract.id.value))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Shertnama tapylmady");
        return update(db.contractTable).replace(contract);
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.contractTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteContract(String id) async => await _errorHandler.processRequest(() async {
        bool have = await (select(db.contractTable)..where((tbl) => tbl.id.equals(id))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Toleg tapylmady");
        String query = "UPDATE contract_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [true, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> closeContract(String id) async => await _errorHandler.processRequest(() async {
        String query = "UPDATE contract_table SET closed = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [true, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateContract(String id) async => await _errorHandler.processRequest(() async {
        final rows = await (select(db.paymentTable)..where((tbl) => tbl.contractId.equals(id) & tbl.isDeleted.equals(false))).get();
        int paidMonths = rows.length - 1;
        int sum = 0;
        for (var row in rows) {
          sum += row.paidAmount;
        }

        String query = "UPDATE contract_table SET paid_amount = ?, paid_months = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [sum, paidMonths, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async =>
      await _errorHandler.processRequest(() async {
        return await executor.runSelect('select * from contract_table where is_synced = false', []);
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async =>
      await _errorHandler.processRequest(() async {
        String query = "update contract_table set is_synced = true where is_synced = false";
        await customStatement(query, []);
        return true;
      });
}
