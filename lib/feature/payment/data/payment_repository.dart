import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/payment_dao.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/data/services/payment_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list(Map<String, String> params);

  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, String>> createDb(PaymentTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(PaymentTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, List<PaymentData>>> getAllDb();

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, PaymentDetail>> detail(String id);
}

@Singleton(as: PaymentRepository)
class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentApiService service;
  final PaymentDao paymentDao;

  PaymentRepositoryImpl(this.service, this.paymentDao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list(Map<String, String> params) {
    return service.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data) {
    return service.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(String id, Map<String, dynamic> data) {
    return service.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) {
    return service.delete(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, String>> createDb(PaymentTableCompanion companion) {
    return paymentDao.insertPayment(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<PaymentData>>> getAllDb() {
    return paymentDao.getAllPayments();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(PaymentTableCompanion companion) {
    return paymentDao.updatePayment(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(String id) {
    return paymentDao.deletePayment(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, PaymentDetail>> detail(String id) {
    return paymentDao.detail(id);
  }
}
