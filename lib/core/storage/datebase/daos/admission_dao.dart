import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../arch/drift_error_handler/drift_error_handler.dart';
import '../../../../arch/drift_error_handler/models/drift_error_models.dart';
import '../../../../arch/functional_models/either.dart';
import '../app_database.dart';
import '../tables/admission_table.dart';

part 'admission_dao.g.dart';

@injectable
@DriftAccessor(tables: [AdmissionTable])
class AdmissionDao extends DatabaseAccessor<AppDatabase> with _$AdmissionDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  AdmissionDao(super.db);

  Future<Either<DriftRequestError<DefaultDriftError>, String>> insertAdmission(AdmissionTableCompanion companion) async =>
      await _errorHandler.processRequest(() async {
        await into(db.admissionTable).insert(companion);
        return companion.id.value;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateAdmission(AdmissionTableCompanion companion) async =>
      await _errorHandler.processRequest(() async {
        bool have = await (select(db.admissionTable)..where((tbl) => tbl.id.equals(companion.id.value))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Sowda tapylmady");
        return await update(db.admissionTable).replace(companion);
      });

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> isExists(String id) async {
    final result = await _errorHandler.processRequest(() => (select(db.admissionTable)..where((tbl) => tbl.id.equals(id))).get());
    if (result.isLeft) return Either.left(result.left);
    return Either.right(result.right.isNotEmpty);
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteAdmission(String id) async => await _errorHandler.processRequest(() async {
        bool have = await (select(db.admissionTable)..where((tbl) => tbl.id.equals(id))).get().then((value) => value.isNotEmpty);

        if (!have) throw DriftError("Sowda tapylmady");
        String query = "UPDATE admission_table SET is_deleted = ?, is_synced = ? WHERE id = ?";
        await customStatement(query, [true, false, id]);
        return true;
      });

  Future<Either<DriftRequestError<DefaultDriftError>, List<Map<String, dynamic>>>> getUnSyncedData() async {
    return await _errorHandler.processRequest(() async {
      return await executor.runSelect('select * from admission_table where is_synced = false', []);
    });
  }

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> allSynced() async {
    String query = "update admission_table set is_synced = true where is_synced = false";
    return await _errorHandler.processRequest(() async {
      await customStatement(query, []);
      return true;
    });
  }
}
