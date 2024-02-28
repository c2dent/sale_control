import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/employee_table.dart';
import 'package:injectable/injectable.dart';

part 'employee_dao.g.dart';

@injectable
@DriftAccessor(tables: [EmployeeTable])
class EmployeeDao extends DatabaseAccessor<AppDatabase> with _$EmployeeDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  EmployeeDao(super.db);

  Future<Either<DriftRequestError<DefaultDriftError>, List<EmployeeTableData>>> list() async =>
      await _errorHandler.processRequest(() => (select(employeeTable)..where((tbl) => tbl.isDeleted.equals(false))).get());

  Future<Either<DriftRequestError<DefaultDriftError>, int>> insertEmployee(EmployeeTableCompanion employee) async =>
      await _errorHandler.processRequest(() => into(db.employeeTable).insert(employee));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateEmployee(EmployeeTableCompanion employee) async =>
      await _errorHandler.processRequest(() => update(db.employeeTable).replace(employee));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.employeeTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedEmployee() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from employee_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update employee_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
