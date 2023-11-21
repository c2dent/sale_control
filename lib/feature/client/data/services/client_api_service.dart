import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/sync/client_sync.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:injectable/injectable.dart';

abstract class ClientApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Client>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<Either<CommonResponseError<DefaultApiError>, List<ClientSync>>> getClientsSync(Map<String, String>? params);

  Future<Either<CommonResponseError<DefaultApiError>, bool>> setClientsSync(List<Map<String, dynamic>> data);
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

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/clients/", data: data));

    if (result.isLeft) return Either.left(result.left);

    Client client = Client.fromJson(result.right.data);

    return Either.right(client);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> update(String id, Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.put("/clients/$id/", data: data));

    if (result.isLeft) return Either.left(result.left);

    Client client = Client.fromJson(result.right.data);

    return Either.right(client);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) async {
    final result = await _dioErrorHandler.processRequest(() => _client.delete("/clients/$id/"));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right({});
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ClientSync>>> getClientsSync(Map<String, String>? params) async {
    List<ClientSync> clients = [];
    final result = await _dioErrorHandler.processRequest(() => _client.get("/sync/client/", queryParameters: params));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      clients.add(ClientSync.fromJson(item));
    }

    return Either.right(clients);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> setClientsSync(List<Map<String, dynamic>> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/sync/client/", data: data));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right(true);
  }
}
