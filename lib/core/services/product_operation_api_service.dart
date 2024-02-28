import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../arch/dio_error_handler/dio_error_handler.dart';
import '../../arch/dio_error_handler/models/dio_error_models.dart';
import '../../arch/functional_models/either.dart';
import '../../consts/injectable_names.dart';
import '../models/sync/product_operation_sync.dart';

abstract class ProductOperationApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<ProductOperationSync>>> getProductOperationSync(Map<String, String>? params);

  Future<Either<CommonResponseError<DefaultApiError>, bool>> setSyncData(List<Map<String, dynamic>> data);
}

@Singleton(as: ProductOperationApiService)
class ProductOperationApiServiceImpl extends ProductOperationApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  ProductOperationApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ProductOperationSync>>> getProductOperationSync(Map<String, String>? params) async {
    List<ProductOperationSync> operations = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/sync/product-operation/', queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      operations.add(ProductOperationSync.fromJson(item));
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
