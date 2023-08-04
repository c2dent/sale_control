import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/data/services/payment_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list(Map<String, String> params);
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(int id, Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id);
}

@Singleton(as: PaymentRepository)
class PaymentRepositoryImpl extends PaymentRepository {

  final PaymentApiService service;

  PaymentRepositoryImpl(this.service);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list(Map<String, String> params) {
    return service.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data) {
    return service.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(int id, Map<String, dynamic> data) {
    return service.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) {
    return service.delete(id);
  }

}
