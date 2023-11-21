import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/service_dao.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/data/services/service_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ServiceRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, List<ServiceData>>> getAllDb();

  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ServiceTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ServiceTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id);
}

@Singleton(as: ServiceRepository)
class ServiceRepositoryImpl extends ServiceRepository {
  final ServiceApiService service;
  final ServiceDao _dao;

  ServiceRepositoryImpl(this.service, this._dao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list(Map<String, String> params) {
    return service.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data) {
    return service.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(String id, Map<String, dynamic> data) {
    return service.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) {
    return service.delete(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<ServiceData>>> getAllDb() {
    return _dao.getAll();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ServiceTableCompanion companion) {
    return _dao.insertService(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ServiceTableCompanion companion) {
    return _dao.updateService(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id) {
    return _dao.deleteService(id);
  }
}
