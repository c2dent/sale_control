import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/contract_dao.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/services/contract_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ContractRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ContractTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractData>>> listDb({Map<String, CustomFilterWidget>? filters});

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ContractTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateDb(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> close(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, ContractDataDetail>> detail(String id);
}

@Singleton(as: ContractRepository)
class ContractRepositoryImpl extends ContractRepository {
  final ContractApiService _apiService;
  final ContractDao _dao;

  ContractRepositoryImpl(this._apiService, this._dao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list(Map<String, String> params) {
    return _apiService.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data) {
    return _apiService.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(String id, Map<String, dynamic> data) {
    return _apiService.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) {
    return _apiService.delete(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ContractTableCompanion companion) {
    return _dao.insertContract(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractData>>> listDb({Map<String, CustomFilterWidget>? filters}) {
    return _dao.getAllContracts(filters);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ContractTableCompanion companion) {
    return _dao.updateContract(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> close(String id) {
    return _dao.closeContract(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateDb(String id) {
    return _dao.recalculateContract(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, ContractDataDetail>> detail(String id) {
    return _dao.getContractDetail(id);
  }
}
