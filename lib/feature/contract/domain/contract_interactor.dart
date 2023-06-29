import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/area.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/locality.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/repositories/area_repository.dart';
import 'package:hasap_admin/core/repositories/employee_repository.dart';
import 'package:hasap_admin/core/repositories/locality_repository.dart';
import 'package:hasap_admin/core/repositories/region_repository.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ContractInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> getContracts({required List<Filter> filters});
  Future<List<Region>> getRegions();
  Future<List<Area>> getAreas();
  Future<List<Locality>> getLocalities();
  Future<List<Employee>> getEmployees(Map<String, String>? params);
}

@Singleton(as: ContractInteractor)
class ContractInteractorImpl extends ContractInteractor {

  final ContractRepository contractRepository;
  final RegionRepository regionRepository;
  final AreaRepository areaRepository;
  final LocalityRepository localityRepository;
  final EmployeeRepository employeeRepository;

  ContractInteractorImpl(
      this.contractRepository,
      this.regionRepository,
      this.areaRepository,
      this.localityRepository,
      this.employeeRepository,
  );

  @override
  Future<List<Area>> getAreas() async {
    final result = await areaRepository.getAreas();

    if (result.isLeft) {
      return [];
    }
    return result.right;
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Contract>>> getContracts({required List<Filter> filters}) {

    Map<String, String> params = {};

    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return contractRepository.getContracts(params);
  }

  @override
  Future<List<Locality>> getLocalities() async {
    final result = await localityRepository.getLocalities();

    if (result.isLeft) {
      return [];
    }
    return result.right;
  }

  @override
  Future<List<Region>> getRegions() async {
    final result = await regionRepository.getRegions();

    if (result.isLeft) {
      return [];
    }

    return result.right;
  }

  @override
  Future<List<Employee>> getEmployees(Map<String, String>? params) async {
    final result = await employeeRepository.getEmployees(params);

    if (result.isLeft) {
      return [];
    }

    return result.right;
  }

}