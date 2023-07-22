import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/region_repository.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ContractInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list({required List<Filter> filters});

  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(int id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);

  Future<List<Region>> getRegions();

  Future<List<Employee>> getEmployees(Map<String, String>? params);
}

@Singleton(as: ContractInteractor)
class ContractInteractorImpl extends ContractInteractor {
  final ContractRepository repository;
  final RegionRepository regionRepository;
  final EmployeeRepository employeeRepository;

  ContractInteractorImpl(
    this.repository,
    this.regionRepository,
    this.employeeRepository,
  );

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> list({required List<Filter> filters}) {
    Map<String, String> params = {};
    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return repository.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> create(Map<String, dynamic> data) {
    return repository.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Contract>> update(int id, Map<String, dynamic> data) {
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
  Future<List<Region>> getRegions() async {
    final result = await regionRepository.getRegions({});

    if (result.isLeft) {
      return [];
    }

    return result.right;
  }
}
