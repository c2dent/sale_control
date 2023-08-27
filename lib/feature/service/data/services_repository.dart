import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/data/services/service_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ServiceRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(int id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);
}

@Singleton(as: ServiceRepository)
class ServiceRepositoryImpl extends ServiceRepository {
  final ServiceApiService service;

  ServiceRepositoryImpl(this.service);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list(Map<String, String> params) {
    return service.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data) {
    return service.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(int id, Map<String, dynamic> data) {
    return service.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) {
    return service.delete(id);
  }
}
