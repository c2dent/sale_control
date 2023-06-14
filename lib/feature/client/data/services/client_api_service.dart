import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:injectable/injectable.dart';

abstract class ClientApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(List<Filter> filters);
}

@Singleton(as: ClientApiService)
class ClientApiServiceImpl extends ClientApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  ClientApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(List<Filter> filters) async {
    List<Client> clients = [];

    String url = "/clients/?";

    for (Filter filter in filters) {
      url += "${filter.parameterName}=${filter.parameterValue}&";
    }

    final result = await _dioErrorHandler.processRequest(() => _client.get(url));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data) {
      clients.add(Client.fromJson(item));
    }

    return Either.right(clients);
  }

}