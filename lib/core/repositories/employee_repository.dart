import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/services/employee_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/employee_dao.dart';
import 'package:injectable/injectable.dart';

abstract class EmployeeRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Employee>>> getEmployees(Map<String, String>? params);

  Future<Either<DriftRequestError<DefaultDriftError>, List<EmployeeTableData>>> list();
}

@Singleton(as: EmployeeRepository)
class EmployeeRepositoryImpl extends EmployeeRepository {
  final EmployeeApiService employeeApiService;
  final EmployeeDao _dao;

  EmployeeRepositoryImpl(this.employeeApiService, this._dao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Employee>>> getEmployees(Map<String, String>? params) {
    return employeeApiService.getEmployees(params);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<EmployeeTableData>>> list() {
    return _dao.list();
  }
}
