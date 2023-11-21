import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/sync/employee_sync.dart';
import 'package:injectable/injectable.dart';

abstract class EmployeeApiService {
  Future<Either<CommonResponseError<DefaultApiError>, List<Employee>>> getEmployees(Map<String, String>? params);

  Future<Either<CommonResponseError<DefaultApiError>, List<EmployeeSync>>> getEmployeesSync(Map<String, String>? params);
}

@Singleton(as: EmployeeApiService)
class EmployeeApiServiceImpl extends EmployeeApiService {

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  EmployeeApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Employee>>> getEmployees(Map<String, String>? params) async {
    List<Employee> employees = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/employees/', queryParameters: params));

    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      employees.add(Employee.fromJson(item));
    }

    return Either.right(employees);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<EmployeeSync>>> getEmployeesSync(Map<String, String>? params) async {
    List<EmployeeSync> employees = [];

    final result = await _dioErrorHandler.processRequest(() => _client.get('/employees/', queryParameters: params));
    if (result.isLeft) return Either.left(result.left);

    for (var item in result.right.data['results']) {
      employees.add(EmployeeSync.fromJson(item));
    }

    return Either.right(employees);
  }
}