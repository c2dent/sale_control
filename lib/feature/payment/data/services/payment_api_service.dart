import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> getPayments(Map<String, String> params);
}

@Singleton(as: PaymentApiService)
class PaymentApiServiceImpl extends PaymentApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  PaymentApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> getPayments(Map<String, String> params) async {
    List<Payment> payments = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get("/payments/", queryParameters: params));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      payments.add(Payment.fromJson(item));
    }

    return Either.right(payments);
  }

}