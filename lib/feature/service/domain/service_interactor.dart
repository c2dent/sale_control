import 'package:drift/drift.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/mappers/operation_mapper.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/core/repositories/operation_repository.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/data/services_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ServiceInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list({required List<Filter> filters});

  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, List<ServiceData>>> getAllDb();

  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ServiceTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ServiceTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(ServiceTableData service);

  Future<List<ContractData>> getContracts();

  Future<List<Office>> getOffices(Map<String, String>? params);
}

@Singleton(as: ServiceInteractor)
class ServiceInteractorImpl extends ServiceInteractor {
  final ServiceRepository repository;

  final ContractRepository contactRepository;
  final OfficeRepository officeRepository;
  final OperationRepository _operationRepository;
  final OperationMapper _operationMapper;

  ServiceInteractorImpl(this.repository, this.contactRepository, this.officeRepository, this._operationRepository, this._operationMapper);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list({required List<Filter> filters}) {
    Map<String, String> params = {};
    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return repository.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data) {
    return repository.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(String id, Map<String, dynamic> data) {
    return repository.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) {
    return repository.delete(id);
  }

  @override
  Future<List<ContractData>> getContracts() async {
    final result = await contactRepository.listDb();
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
  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ServiceTableCompanion companion) async {
    final createResult = await _operationRepository.createDb(await _operationMapper.fromServiceCompanion(companion, true));
    if (createResult.isLeft) return Either.left(createResult.left);
    companion = companion.copyWith(operationId: Value(createResult.right));
    return await repository.createDb(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<ServiceData>>> getAllDb() {
    return repository.getAllDb();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ServiceTableCompanion companion) async {
    final operationResult = await _operationRepository.updateDb(await _operationMapper.fromServiceCompanion(companion, false));
    if (operationResult.isLeft) return Either.left(operationResult.left);
    return await repository.updateDb(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(ServiceTableData service) async {
    final operationResult = await _operationRepository.deleteDb(service.operationId);
    if (operationResult.isLeft) return Either.left(operationResult.left);

    final result = await repository.deleteDb(service.id);
    if (operationResult.isLeft) return Either.left(operationResult.left);
    return result;
  }
}
