import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/services/contract_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ContractRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> getContracts(Map<String, String> params);
}

@Singleton(as: ContractRepository)
class ContractRepositoryImpl extends ContractRepository {
  final ContractApiService contractApiService;

  ContractRepositoryImpl(this.contractApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> getContracts(Map<String, String> params) {
    return contractApiService.getContracts(params);
  }

}