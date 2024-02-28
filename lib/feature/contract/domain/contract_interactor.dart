import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/mappers/payment_mapper.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/core/repositories/region_repository.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/data/client_repository.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:hasap_admin/feature/payment/domain/payment_interactor.dart';
import 'package:injectable/injectable.dart';

abstract class ContractInteractor {
  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractData>>> list({required Map<String, CustomFilterWidget> filters});

  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ContractTableCompanion companion, ClientTableCompanion clientCompanion);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ContractTableCompanion companion, ClientTableCompanion clientCompanion);

  Future<Either<DriftRequestError<DefaultDriftError>, ContractDataDetail>> detail(String id);

  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getAllRegions();

  Future<List<Region>> getRegions(Region? region);

  Future<Either<DriftRequestError<DefaultDriftError>, RegionTableData>> getRegionById(int id);

  Future<List<Client>> getClients();

  Future<List<Office>> getOffices(Map<String, String>? params);

  Future<List<EmployeeTableData>> getEmployees();
}

@Singleton(as: ContractInteractor)
class ContractInteractorImpl extends ContractInteractor {
  final ContractRepository repository;
  final RegionRepository regionRepository;
  final EmployeeRepository employeeRepository;
  final ClientRepository clientRepository;
  final OfficeRepository officeRepository;
  final PaymentInteractor _paymentInteractor;
  final PaymentMapper _paymentMapper;

  ContractInteractorImpl(
    this.repository,
    this.regionRepository,
    this.employeeRepository,
    this.clientRepository,
    this.officeRepository,
    this._paymentInteractor,
    this._paymentMapper,
  );

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<ContractData>>> list({required Map<String, CustomFilterWidget> filters}) {
    return repository.listDb(filters: filters);
  }

  @override
  Future<List<EmployeeTableData>> getEmployees() async {
    List<EmployeeTableData> employees = [];
    final result = await employeeRepository.list();
    if (result.isRight) employees = result.right;
    return employees;
  }

  @override
  Future<List<Region>> getRegions(Region? region) async {
    Map<String, String> params = {};
    if (region != null) {
      params['id'] = region.id.toString();
    }

    final result = await regionRepository.getRegions(params);
    if (result.isLeft) return [];
    return result.right;
  }

  @override
  Future<List<Client>> getClients() async {
    final result = await clientRepository.getClientsDb({});
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
  Future<Either<DriftRequestError<DefaultDriftError>, int>> createDb(ContractTableCompanion companion, ClientTableCompanion clientCompanion) async {
    final clientResult = await clientRepository.createClientDb(clientCompanion);
    if (clientResult.isLeft) return Either.left(clientResult.left);

    final result = await repository.createDb(companion);
    if (result.isLeft) return Either.left(result.left);
    if (companion.paidAmount.value < 1) return Either.right(result.right);

    final paymentCreateResult = await _paymentInteractor.create(_paymentMapper.fromContractCompanion(companion));
    if (paymentCreateResult.isLeft) return Either.left(paymentCreateResult.left);
    return Either.right(result.right);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> updateDb(ContractTableCompanion companion, ClientTableCompanion clientCompanion) async {
    final result = await clientRepository.updateClientDb(clientCompanion);
    if (result.isLeft) return Either.left(result.left);
    return repository.updateDb(companion);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getAllRegions() {
    return regionRepository.getAllRegionsDb();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, ContractDataDetail>> detail(String id) {
    return repository.detail(id);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, RegionTableData>> getRegionById(int id) {
    return regionRepository.getById(id);
  }
}
