import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/mappers/office_mapper.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/office_table.dart';
import 'package:injectable/injectable.dart';

part 'office_dao.g.dart';

@injectable
@DriftAccessor(tables: [OfficeTable])
class OfficeDao extends DatabaseAccessor<AppDatabase> with _$OfficeDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  OfficeDao(AppDatabase db) : super(db);

  Future<List<Office>> getAllOffices() => select(db.officeTable)
      .map((ofc) => OfficeMapper.officeFromOfficeTableData(ofc))
      .get();

  Future<Either<DriftRequestError<DefaultDriftError>, int>> insertOffice(OfficeTableCompanion office) async =>
      await _errorHandler.processRequest(() => into(db.officeTable).insert(office));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateOffice(OfficeTableCompanion office) async =>
      await _errorHandler.processRequest(() => update(db.officeTable).replace(office));

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.officeTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

}