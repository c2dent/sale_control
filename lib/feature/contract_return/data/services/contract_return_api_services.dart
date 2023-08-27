import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:injectable/injectable.dart';

abstract class ContractReturnApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list(Map<String, String> params);
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(int id, Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id);
}

@Singleton(as: ContractReturnApiService)
class ContractReturnApiServiceImpl extends ContractReturnApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  ContractReturnApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list(Map<String, String> params) async {
    List<ContractReturn> returns = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get("/contract-return/", queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      returns.add(ContractReturn.fromJson(item));
    }
    return Either.right(returns);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/contract-return/", data: data));
    if (result.isLeft) return Either.left(result.left);

    ContractReturn contractReturn = ContractReturn.fromJson(result.right.data);
    return Either.right(contractReturn);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(int id, Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.put("/contract-return/$id/", data: data));
    if (result.isLeft) return Either.left(result.left);

    ContractReturn contractReturn = ContractReturn.fromJson(result.right.data);
    return Either.right(contractReturn);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id) async {
    final result = await _dioErrorHandler.processRequest(() => _client.delete("/contract-return/$id/"));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right({});
  }

}