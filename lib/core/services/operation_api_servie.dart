import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/sync/operation_sync.dart';
import 'package:injectable/injectable.dart';

abstract class OperationApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<OperationSync>>> getOperationsSync(Map<String, String>? params);

  Future<Either<CommonResponseError<DefaultApiError>, bool>> setSyncData(List<Map<String, dynamic>> data);
}

@Singleton(as: OperationApiService)
class OperationApiServiceImpl extends OperationApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  OperationApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<OperationSync>>> getOperationsSync(Map<String, String>? params) async {
    List<OperationSync> operations = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/sync/operation/', queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      operations.add(OperationSync.fromJson(item));
    }

    return Either.right(operations);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> setSyncData(List<Map<String, dynamic>> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/sync/operation/", data: data));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right(true);
  }

}