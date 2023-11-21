import 'package:drift/drift.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/operation_mapper.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/core/repositories/operation_repository.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/data/payment_repository.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Payment>>> list({required List<Filter> filters});

  Future<Either<CommonResponseError<DefaultApiError>, Payment>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(String id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id);

  Future<List<Employee>> getEmployees(Map<String, String>? params);

  Future<List<ContractData>> getContracts();

  Future<List<Office>> getOffices(Map<String, String>? params);

  Future<Either<DriftRequestError<DefaultDriftError>, String>> createDb(PaymentTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(PaymentTableCompanion companion);

  Future<Either<DriftRequestError<DefaultDriftError>, List<PaymentData>>> getAllDb();

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(PaymentData paymentData);
}

@Singleton(as: PaymentInteractor)
class PaymentInteractorImpl extends PaymentInteractor {
  final EmployeeRepository employeeRepository;
  final ContractRepository contractRepository;
  final PaymentRepository repository;
  final OfficeRepository officeRepository;
  final OperationRepository operationRepository;
  final OperationMapper operationMapper;

  PaymentInteractorImpl(
      this.repository, this.employeeRepository, this.contractRepository, this.officeRepository, this.operationRepository, this.operationMapper);

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
  Future<Either<CommonResponseError<DefaultApiError>, Payment>> update(String id, Map<String, dynamic> data) {
    return repository.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(String id) {
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
  Future<List<ContractData>> getContracts() async {
    final result = await contractRepository.listDb();
    if (result.isLeft) return [];
    return result.right;
  }

  @override
  Future<List<Office>> getOffices(Map<String, String>? params) async {
    final result = await officeRepository.getList({});
    if (result.isLeft) return [];
    return result.right;
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, String>> createDb(PaymentTableCompanion companion) async {
    final createResult = await operationRepository.createDb(await operationMapper.fromPaymentCompanion(companion, true));
    if (createResult.isLeft) return Either.left(createResult.left);
    companion = companion.copyWith(operationId: Value(createResult.right));
    final result = await repository.createDb(companion);
    await contractRepository.recalculateDb(companion.contractId.value);
    return result;
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(PaymentTableCompanion companion) async {
    final operationResult = await operationRepository.updateDb(await operationMapper.fromPaymentCompanion(companion, false));
    if (operationResult.isLeft) return Either.left(operationResult.left);
    final result = await repository.updateDb(companion);
    await contractRepository.recalculateDb(companion.contractId.value);
    return result;
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<PaymentData>>> getAllDb() {
    return repository.getAllDb();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> deleteDb(PaymentData paymentData) async {
    final operationResult = await operationRepository.deleteDb(paymentData.payment.operationId);
    if (operationResult.isLeft) return Either.left(operationResult.left);

    final result = await repository.deleteDb(paymentData.payment.id);
    if (operationResult.isLeft) return Either.left(operationResult.left);
    await contractRepository.recalculateDb(paymentData.payment.contractId);
    return result;
  }
}
