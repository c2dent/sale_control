import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/operation_dao.dart';
import 'package:injectable/injectable.dart';

abstract class OperationRepository {
  Future<Either<DriftRequestError<DefaultDriftError>, String>> createDb(OperationTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(OperationTableCompanion companion);
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id);
}

@Singleton(as: OperationRepository)
class OperationRepositoryImpl extends OperationRepository {
  final OperationDao _dao;

  OperationRepositoryImpl(this._dao);

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, String>> createDb(OperationTableCompanion companion) {
    return _dao.insertOperation(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(OperationTableCompanion companion) {
    return _dao.updateOperation(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id) {
    return _dao.deleteOperation(id);
  }
}
