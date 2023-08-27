import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/data/payment_repository.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list({required List<Filter> filters});
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(int id, Map<String, dynamic> data);
  Future<Either<CommonResponseError<DefaultApiError>,  Map<String, String>>> delete(int id);

  Future<List<Employee>> getEmployees(Map<String, String>? params);
  Future<List<Contract>> getContracts();
  Future<List<Office>> getOffices(Map<String, String>? params);
}

@Singleton(as: PaymentInteractor)
class PaymentInteractorImpl extends PaymentInteractor {
  final EmployeeRepository employeeRepository;
  final ContractRepository contractRepository;
  final PaymentRepository repository;
  final OfficeRepository officeRepository;

  PaymentInteractorImpl(this.repository, this.employeeRepository, this.contractRepository, this.officeRepository);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list({required List<Filter> filters}) {
    Map<String, String> params = {};
    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return repository.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data) {
    return repository.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(int id, Map<String, dynamic> data) {
    return repository.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) {
    return repository.delete(id);
  }

  @override
  Future<List<Employee>> getEmployees(Map<String, String>? params) async {
    final result = await employeeRepository.getEmployees(params);

    if (result.isLeft) {
      return [];
    }

    return result.right;
  }

  @override
  Future<List<Contract>> getContracts() async {
    final result = await contractRepository.list({});
    if (result.isLeft) return [];
    return result.right;
  }

  @override
  Future<List<Office>> getOffices(Map<String, String>? params) async {
    final result = await officeRepository.getList({});
    if (result.isLeft) return [];
    return result.right;
  }
}
