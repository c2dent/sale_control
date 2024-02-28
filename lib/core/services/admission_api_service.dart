import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../arch/dio_error_handler/dio_error_handler.dart';
import '../../arch/dio_error_handler/models/dio_error_models.dart';
import '../../arch/functional_models/either.dart';
import '../../consts/injectable_names.dart';
import '../models/sync/admission_sync.dart';

abstract class AdmissionApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<AdmissionSync>>> getAdmissionSync(Map<String, String>? params);
}

@Singleton(as: AdmissionApiService)
class AdmissionApiServiceImpl extends AdmissionApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  AdmissionApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<AdmissionSync>>> getAdmissionSync(Map<String, String>? params) async {
    List<AdmissionSync> admissions = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/sync/admission/', queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      admissions.add(AdmissionSync.fromJson(item));
    }

    return Either.right(admissions);
  }

}