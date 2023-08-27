import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ContractorReturnInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list({required List<Filter> filters});

  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(int id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);

  Future<List<Employee>> getEmployees(Map<String, String>? params);

  Future<List<Contract>> getContracts();

  Future<List<Office>> getOffices(Map<String, String>? params);
}

@Singleton(as: ContractorReturnInteractor)
class ContractReturnInteractorImpl extends ContractorReturnInteractor {
  final EmployeeRepository employeeRepository;
  final ContractRepository contractRepository;
  final ContractReturnRepository repository;
  final OfficeRepository officeRepository;

  ContractReturnInteractorImpl(this.repository, this.employeeRepository, this.contractRepository, this.officeRepository);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<ContractReturn>>> list({required List<Filter> filters}) {
    Map<String, String> params = {};
    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return repository.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> create(Map<String, dynamic> data) {
    return repository.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, ContractReturn>> update(int id, Map<String, dynamic> data) {
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
    final result = await officeRepository.getList(params);

    if (result.isLeft) return [];
    return result.right;
  }
}
