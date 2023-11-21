import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/client_dao.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/data/services/client_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ClientRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Client>> update(String clientId, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String clientId);

  Future<Either<DriftRequestError<DefaultDriftError>, List<Client>>> getClientsDb(Map<String, String> params);

  Future<Either<DriftRequestError<DefaultDriftError>, String>> createClientDb(ClientTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateClientDb(ClientTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteClientDb(String id);
}

@Singleton(as: ClientRepository)
class ClientRepositoryImpl extends ClientRepository {
  final ClientApiService clientApiService;
  final ClientDao clientDao;

  ClientRepositoryImpl(this.clientApiService, this.clientDao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients(Map<String, String> params) {
    return clientApiService.getClients(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data) {
    return clientApiService.createClient(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> update(String clientId, Map<String, dynamic> data) {
    return clientApiService.update(clientId, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String clientId) {
    return clientApiService.delete(clientId);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<Client>>> getClientsDb(Map<String, String> params) {
    return clientDao.getAllClients();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, String>> createClientDb(ClientTableCompanion companion) {
    return clientDao.insertClient(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateClientDb(ClientTableCompanion companion) {
    return clientDao.updateClient(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteClientDb(String id) {
    return clientDao.deleteClient(id);
  }
}
