import 'package:dio/dio.dart';
import 'package:hasap_admin/core/models/sync/product_sync.dart';
import 'package:injectable/injectable.dart';

import '../../arch/dio_error_handler/dio_error_handler.dart';
import '../../arch/dio_error_handler/models/dio_error_models.dart';
import '../../arch/functional_models/either.dart';
import '../../consts/injectable_names.dart';

abstract class ProductApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<ProductSync>>> getProductSync(Map<String, String>? params);
}

@Singleton(as: ProductApiService)
class ProductApiServiceImpl extends ProductApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  ProductApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ProductSync>>> getProductSync(Map<String, String>? params) async {
    List<ProductSync> products = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/sync/product/', queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      products.add(ProductSync.fromJson(item));
    }

    return Either.right(products);
  }

}