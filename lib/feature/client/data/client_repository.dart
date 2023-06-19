import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/data/services/client_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ClientRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(Map<String, String> params);
}

@Singleton(as: ClientRepository)
class ClientRepositoryImpl extends ClientRepository {
  final ClientApiService clientApiService;

  ClientRepositoryImpl(this.clientApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(Map<String, String> params) {
    return clientApiService.getClients(params);
  }

}