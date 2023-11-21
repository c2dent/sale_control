import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/core/repositories/region_repository.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/data/client_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ClientInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Client>>> getClients({required List<Filter> filters});

  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Client>> updateClient(String clientId, Map<String, dynamic> data);

  Future<List<Region>> getRegions(Region? region);

  Future<List<Employee>> getEmployees(Map<String, String>? params);

  Future<List<Office>> getOffices(Map<String, String>? params);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String clientId);

  Future<Either<DriftRequestError<DefaultDriftError>, List<Client>>> getClientsDb({required List<Filter> filters});

  Future<Either<DriftRequestError<DefaultDriftError>, String>> createClientDb(ClientTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateClientDb(ClientTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteClientDb(String id);
}

@Singleton(as: ClientInteractor)
class ClientInteractorImpl extends ClientInteractor {
  final ClientRepository clientRepository;
  final RegionRepository regionRepository;
  final EmployeeRepository employeeRepository;
  final OfficeRepository officeRepository;

  ClientInteractorImpl(
    this.clientRepository,
    this.regionRepository,
    this.employeeRepository,
    this.officeRepository,
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
    if (region != null) params['id'] = region.id.toString();

    final result = await regionRepository.getRegions(params);
    if (result.isLeft) return [];

    return result.right;
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> createClient(Map<String, dynamic> data) {
    return clientRepository.createClient(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Client>> updateClient(String clientId, Map<String, dynamic> data) {
    return clientRepository.update(clientId, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String clientId) {
    return clientRepository.delete(clientId);
  }

  @override
  Future<List<Employee>> getEmployees(Map<String, String>? params) async {
    final result = await employeeRepository.getEmployees(params);
    if (result.isLeft) return [];
    return result.right;
  }

  @override
  Future<List<Office>> getOffices(Map<String, String>? params) async {
    final result = await officeRepository.getList(params);

    if (result.isLeft) return [];
    return result.right;
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<Client>>> getClientsDb({required List<Filter> filters}) {
    Map<String, String> params = {};

    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return clientRepository.getClientsDb(params);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, String>> createClientDb(ClientTableCompanion companion) {
    return clientRepository.createClientDb(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateClientDb(ClientTableCompanion companion) {
    return clientRepository.updateClientDb(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteClientDb(String id) {
    return clientRepository.deleteClientDb(id);
  }
}
