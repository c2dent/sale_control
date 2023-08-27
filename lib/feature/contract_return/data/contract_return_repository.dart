import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:hasap_admin/feature/contract_return/data/services/contract_return_api_services.dart';
import 'package:injectable/injectable.dart';

abstract class ContractReturnRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list(Map<String, String> params);
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(int id, Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id);
}

@Singleton(as: ContractReturnRepository)
class ContractReturnRepositoryImpl extends ContractReturnRepository {

  final ContractReturnApiService service;

  ContractReturnRepositoryImpl(this.service);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list(Map<String, String> params) {
    return service.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data) {
    return service.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(int id, Map<String, dynamic> data) {
    return service.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) {
    return service.delete(id);
  }

}
