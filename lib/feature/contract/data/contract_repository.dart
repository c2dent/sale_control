import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/services/contract_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ContractRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(int id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);
}

@Singleton(as: ContractRepository)
class ContractRepositoryImpl extends ContractRepository {
  final ContractApiService contractApiService;

  ContractRepositoryImpl(this.contractApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list(Map<String, String> params) {
    return contractApiService.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data) {
    return contractApiService.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(int id, Map<String, dynamic> data) {
    return contractApiService.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) {
    return contractApiService.delete(id);
  }
}
