import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/services/employee_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class EmployeeRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Employee>>> getEmployees(Map<String, String>? params);
}

@Singleton(as: EmployeeRepository)
class EmployeeRepositoryImpl extends EmployeeRepository {
  final EmployeeApiService employeeApiService;

  EmployeeRepositoryImpl(this.employeeApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Employee>>> getEmployees(Map<String, String>? params) {
    return employeeApiService.getEmployees(params);
  }
}