import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/feature/coal/data/coal_models.dart';
import 'package:injectable/injectable.dart';

abstract class CoalApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Coal>>> list(Map<String, String> params);
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> create(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> update(int id, Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);
}

@Singleton(as: CoalApiService)
class CoalApiServiceImpl extends CoalApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  CoalApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Coal>>> list(Map<String, String> params) async {
    List<Coal> coals = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get("/coal-replacement/", queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      coals.add(Coal.fromJson(item));
    }

    return Either.right(coals);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> create(Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/coal-replacement/", data: data));
    if (result.isLeft) return Either.left(result.left);
    Coal coal = Coal.fromJson(result.right.data);

    return Either.right(coal);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> update(int id, Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.put("/coal-replacement/$id/", data: data));
    if (result.isLeft) return Either.left(result.left);
    Coal coal = Coal.fromJson(result.right.data);

    return Either.right(coal);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) async {
    final result = await _dioErrorHandler.processRequest(() => _client.delete("/coal-replacement/$id/"));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right({});
  }

}