import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/mappers/office_mapper.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/office_table.dart';
import 'package:injectable/injectable.dart';

part 'office_dao.g.dart';

@injectable
@DriftAccessor(tables: [OfficeTable])
class OfficeDao extends DatabaseAccessor<AppDatabase> with _$OfficeDaoMixin {
  final SettingsService settings = GetIt.instance.get<SettingsService>();
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  OfficeDao(super.db);

  Future<List<Office>> getAllOffices() => select(db.officeTable).map((ofc) => OfficeMapper.officeFromOfficeTableData(ofc)).get();

  Future<Either<DriftRequestError<DefaultDriftError>, int>> insertOffice(OfficeTableCompanion office) async =>
      await _errorHandler.processRequest(() => into(db.officeTable).insert(office));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateOffice(OfficeTableCompanion office) async =>
      await _errorHandler.processRequest(() => update(db.officeTable).replace(office));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.officeTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, OfficeTableData>> get(String id) async => await _errorHandler
      .processRequest(() => (select(db.officeTable)..where((tbl) => tbl.id.equals(id) & tbl.isDeleted.equals(false))).get().then((value) => value.first));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateBalance() async => await _errorHandler.processRequest(() async {
        List<OperationTableData> operations = await (select(db.operationTable)..where((tbl) => tbl.isDeleted.equals(false))).get();
        User? user = await settings.getCurrentUser();

        int balance = 0;
        for (var item in operations) {
          if (item.operationType == 'INCOME') {
            balance += item.amount;
          } else if (item.operationType == 'OUTCOME') {
            balance -= item.amount;
          } else if (item.sourceOfficeId == user?.office.id) {
            balance += item.amount;
          } else {
            balance -= item.amount;
          }
        }

        String query = "UPDATE office_table SET balance = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [balance, false, user?.office.id]);
        return true;
      });
}
