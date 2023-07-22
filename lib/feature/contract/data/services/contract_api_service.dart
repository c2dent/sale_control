import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:injectable/injectable.dart';

abstract class ContractApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list(Map<String, String> params);
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(int id, Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id);
}

@Singleton(as: ContractApiService)
class ContractApiServiceImpl extends ContractApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  ContractApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list(Map<String, String> params) async {
    List<Contract> contracts = [];
    final result = await _dioErrorHandler.processRequest(() => _client.get("/contracts/", queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      contracts.add(Contract.fromJson(item));
    }

    return Either.right(contracts);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/contracts/", data: data));
    if (result.isLeft) return Either.left(result.left);

    Contract contract = Contract.fromJson(result.right.data);
    return Either.right(contract);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(int id, Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.put("/contracts/$id/", data: data));
    if (result.isLeft) return Either.left(result.left);

    Contract contract = Contract.fromJson(result.right.data);
    return Either.right(contract);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) async {
    final result = await _dioErrorHandler.processRequest(() => _client.delete("/contracts/$id/"));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right({});
  }
}