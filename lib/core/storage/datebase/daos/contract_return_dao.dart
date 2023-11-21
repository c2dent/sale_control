import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/contract_return_table.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:injectable/injectable.dart';

part 'contract_return_dao.g.dart';

@injectable
@DriftAccessor(tables: [ContractReturnTable])
class ContractReturnDao extends DatabaseAccessor<AppDatabase> with _$ContractReturnDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  ContractReturnDao(AppDatabase db) : super(db);

  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractReturnData>>> getAll() async =>
      await _errorHandler.processRequest(() async => await (select(contractReturnTable)
            ..where((tbl) => tbl.isDeleted.equals(false))
            ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
          .join([
            leftOuterJoin(db.contractTable, db.contractTable.id.equalsExp(contractReturnTable.contractId), useColumns: true),
            leftOuterJoin(db.employeeTable, db.employeeTable.id.equalsExp(contractReturnTable.creatorId), useColumns: true),
            leftOuterJoin(db.clientTable, db.clientTable.id.equalsExp(db.contractTable.clientId), useColumns: true),
          ])
          .map((row) => ContractReturnData(
              contract: row.readTable(db.contractTable),
              contractReturn: row.readTable(contractReturnTable),
              creator: row.readTable(db.employeeTable),
              client: row.readTable(db.clientTable)))
          .get());

  Future<Either<DriftRequestError<DefaultDriftError>, int>> insertContractReturn(ContractReturnTableCompanion contractReturn) async =>
      await _errorHandler.processRequest(() => into(db.contractReturnTable).insert(contractReturn));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateContractReturn(ContractReturnTableCompanion contractReturn) async =>
      await _errorHandler.processRequest(() => update(db.contractReturnTable).replace(contractReturn));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.contractReturnTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteContractReturn(String id) async => await _errorHandler.processRequest(() async {
        bool have = await (select(db.contractReturnTable)..where((tbl) => tbl.id.equals(id))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Gaytarylan shertnama tapylmady");
        String query = "UPDATE contract_return_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [true, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from contract_return_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update contract_return_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
