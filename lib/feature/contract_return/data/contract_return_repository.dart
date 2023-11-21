import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/contract_return_dao.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:hasap_admin/feature/contract_return/data/services/contract_return_api_services.dart';
import 'package:injectable/injectable.dart';

abstract class ContractReturnRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractReturnData>>> getAll();

  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ContractReturnTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ContractReturnTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id);
}

@Singleton(as: ContractReturnRepository)
class ContractReturnRepositoryImpl extends ContractReturnRepository {
  final ContractReturnApiService service;
  final ContractReturnDao _dao;

  ContractReturnRepositoryImpl(this.service, this._dao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list(Map<String, String> params) {
    return service.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data) {
    return service.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(String id, Map<String, dynamic> data) {
    return service.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) {
    return service.delete(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractReturnData>>> getAll() {
    return _dao.getAll();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ContractReturnTableCompanion companion) {
    return _dao.insertContractReturn(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ContractReturnTableCompanion companion) {
    return _dao.updateContractReturn(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id) {
    return _dao.deleteContractReturn(id);
  }
}
