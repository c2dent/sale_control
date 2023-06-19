import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/area.dart';
import 'package:injectable/injectable.dart';

abstract class AreaApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Area>>> getAreas();
}

@Singleton(as: AreaApiService)
class AreaApiServiceImpl extends AreaApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  AreaApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Area>>> getAreas() async {
    List<Area> areas = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/areas/'));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      areas.add(Area.fromJson(item));
    }

    return Either.right(areas);
  }
}