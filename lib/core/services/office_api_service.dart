import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/models/sync/office_sync.dart';
import 'package:injectable/injectable.dart';

abstract class OfficeApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<OfficeSync>>> getList(Map<String, String>? params);
  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office);
}

@Singleton(as: OfficeApiService)
class OfficeApiServiceImpl extends OfficeApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  OfficeApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<OfficeSync>>> getList(Map<String, String>? params) async {
    List<OfficeSync> offices = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/sync/offices/', queryParameters: params));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      offices.add(OfficeSync.fromJson(item));
    }

    return Either.right(offices);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post('/offices/balance/', data: {"office_id": office.id}));

    if (result.isLeft) return Either.left(result.left);
    return Either.right(Office.fromJson(result.right.data));
  }
}
