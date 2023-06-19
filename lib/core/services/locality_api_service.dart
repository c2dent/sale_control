import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/locality.dart';
import 'package:injectable/injectable.dart';

abstract class LocalityApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Locality>>> getLocalities();
}

@Singleton(as: LocalityApiService)
class LocalityApiServiceImpl extends LocalityApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  LocalityApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Locality>>> getLocalities() async {
    List<Locality> localities = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/localities/'));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      localities.add(Locality.fromJson(item));
    }

    return Either.right(localities);
  }
}