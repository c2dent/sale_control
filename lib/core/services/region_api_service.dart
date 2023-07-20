import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:injectable/injectable.dart';

abstract class RegionApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Region>>> getRegions(Map<String, String> params);
}

@Singleton(as: RegionApiService)
class RegionApiServiceImpl extends RegionApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  RegionApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Region>>> getRegions(Map<String, String> params) async {
    List<Region> regions = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/regions/', queryParameters: params));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      regions.add(Region.fromJson(item));
    }

    return Either.right(regions);
  }
}