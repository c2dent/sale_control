import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:injectable/injectable.dart';

abstract class ClientApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(Map<String, String> params);
}

@Singleton(as: ClientApiService)
class ClientApiServiceImpl extends ClientApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  ClientApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(Map<String, String> params) async {
    List<Client> clients = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get("/clients/", queryParameters: params));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      clients.add(Client.fromJson(item));
    }

    return Either.right(clients);
  }

}