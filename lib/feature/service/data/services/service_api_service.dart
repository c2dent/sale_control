import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/sync/service_sync.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:injectable/injectable.dart';

abstract class ServiceApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<Either<CommonResponseError<DefaultApiError>, List<ServiceSync>>> listSync(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, bool>> setSyncData(List<Map<String, dynamic>> data);
}

@Singleton(as: ServiceApiService)
class ServiceApiServiceImpl extends ServiceApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  ServiceApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list(Map<String, String> params) async {
    List<Service> services = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get("/services/", queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      services.add(Service.fromJson(item));
    }

    return Either.right(services);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/services/", data: data));
    if (result.isLeft) return Either.left(result.left);
    Service coal = Service.fromJson(result.right.data);

    return Either.right(coal);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(String id, Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.put("/services/$id/", data: data));
    if (result.isLeft) return Either.left(result.left);
    Service service = Service.fromJson(result.right.data);

    return Either.right(service);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) async {
    final result = await _dioErrorHandler.processRequest(() => _client.delete("/services/$id/"));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right({});
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ServiceSync>>> listSync(Map<String, String> params) async {
    List<ServiceSync> services = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get("/sync/service/", queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      services.add(ServiceSync.fromJson(item));
    }

    return Either.right(services);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> setSyncData(List<Map<String, dynamic>> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/sync/service/", data: data));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right(true);
  }
}
