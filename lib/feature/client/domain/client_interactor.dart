import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/repositories/region_repository.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/data/client_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ClientInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients({required List<Filter> filters});
  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, Client>> updateClient(int clientId, Map<String, dynamic> data);
  Future<List<Region>> getRegions(Region? region);
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int clientId);
}

@Singleton(as: ClientInteractor)
class ClientInteractorImpl extends ClientInteractor {

  final ClientRepository clientRepository;
  final RegionRepository regionRepository;

  ClientInteractorImpl(
      this.clientRepository,
      this.regionRepository,
  );

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients({required List<Filter> filters}) {

    Map<String, String> params = {};

    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return clientRepository.getClients(params);
  }

  @override
  Future<List<Region>> getRegions(Region? region) async {

    Map<String, String> params = {};

    if (region != null) {
      params['id'] = region.id.toString();
    }

    final result = await regionRepository.getRegions(params);

    if (result.isLeft) {
      return [];
    }

    return result.right;
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data) {
    return clientRepository.createClient(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> updateClient(int clientId, Map<String, dynamic> data) {
    return clientRepository.update(clientId, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int clientId) {
    return clientRepository.delete(clientId);
  }

}