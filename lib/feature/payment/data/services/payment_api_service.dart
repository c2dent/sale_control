import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list(Map<String, String> params);
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(int id, Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id);
}

@Singleton(as: PaymentApiService)
class PaymentApiServiceImpl extends PaymentApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  PaymentApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list(Map<String, String> params) async {
    List<Payment> payments = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get("/payments/", queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      payments.add(Payment.fromJson(item));
    }
    return Either.right(payments);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post("/payments/", data: data));
    if (result.isLeft) return Either.left(result.left);

    Payment payment = Payment.fromJson(result.right.data);
    return Either.right(payment);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(int id, Map<String, dynamic> data) async {
    final result = await _dioErrorHandler.processRequest(() => _client.put("/payments/$id/", data: data));
    if (result.isLeft) return Either.left(result.left);

    Payment payment = Payment.fromJson(result.right.data);
    return Either.right(payment);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id) async {
    final result = await _dioErrorHandler.processRequest(() => _client.delete("/payments/$id/"));
    if (result.isLeft) return Either.left(result.left);
    return const Either.right({});
  }

}