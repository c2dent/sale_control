import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/data/services/payment_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> getPayments(Map<String, String> params);
}

@Singleton(as: PaymentRepository)
class PaymentRepositoryImpl extends PaymentRepository {

  final PaymentApiService paymentApiService;

  PaymentRepositoryImpl(this.paymentApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> getPayments(Map<String, String> params) {
    return paymentApiService.getPayments(params);
  }

}
