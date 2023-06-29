import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/data/payment_repository.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> getPayments({required List<Filter> filters});

  Future<List<Employee>> getEmployees(Map<String, String>? params);
}

@Singleton(as: PaymentInteractor)
class PaymentInteractorImpl extends PaymentInteractor {
  final EmployeeRepository employeeRepository;
  final PaymentRepository paymentRepository;

  PaymentInteractorImpl(this.paymentRepository, this.employeeRepository);

  @override
  Future<List<Employee>> getEmployees(Map<String, String>? params) async {
    final result = await employeeRepository.getEmployees(params);

    if (result.isLeft) {
      return [];
    }

    return result.right;
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> getPayments({required List<Filter> filters}) async {
    Map<String, String> params = {};

    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return paymentRepository.getPayments(params);
  }
}
