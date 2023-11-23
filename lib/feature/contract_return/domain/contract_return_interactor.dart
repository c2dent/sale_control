import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ContractorReturnInteractor {
  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractReturnData>>> list();

  Future<Either<DriftRequestError<DefaultDriftError>, int>> create(ContractReturnTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> update(ContractReturnTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> delete(String id);

  Future<List<Employee>> getEmployees(Map<String, String>? params);

  Future<List<ContractData>> getContracts();

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
  Future<List<Employee>> getEmployees(Map<String, String>? params) async {
    final result = await employeeRepository.getEmployees(params);

    if (result.isLeft) {
      return [];
    }

    return result.right;
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractReturnData>>> list() {
    return repository.getAll();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, int>> create(ContractReturnTableCompanion companion) async {
    final result = await repository.createDb(companion);
    await contractRepository.close(companion.contractId.value);
    return result;
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> update(ContractReturnTableCompanion companion) {
    return repository.updateDb(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> delete(String id) {
    return repository.deleteDb(id);
  }

  @override
  Future<List<ContractData>> getContracts() async {
    final result = await contractRepository.listDb();
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
