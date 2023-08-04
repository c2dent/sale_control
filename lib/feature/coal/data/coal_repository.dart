import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/coal/data/coal_models.dart';
import 'package:hasap_admin/feature/coal/data/services/coal_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class CoalRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Coal>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Coal>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Coal>> update(int id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);
}

@Singleton(as: CoalRepository)
class CoalRepositoryImpl extends CoalRepository {
  final CoalApiService service;

  CoalRepositoryImpl(this.service);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Coal>>> list(Map<String, String> params) {
    return service.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> create(Map<String, dynamic> data) {
    return service.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> update(int id, Map<String, dynamic> data) {
    return service.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) {
    return service.delete(id);
  }
}
