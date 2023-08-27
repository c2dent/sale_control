import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/data/services_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ServiceInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list({required List<Filter> filters});

  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(int id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);

  Future<List<Contract>> getContracts();

  Future<List<Office>> getOffices(Map<String, String>? params);
}

@Singleton(as: ServiceInteractor)
class ServiceInteractorImpl extends ServiceInteractor {

  final ServiceRepository repository;

  final ContractRepository contactRepository;
  final OfficeRepository officeRepository;

  ServiceInteractorImpl(
      this.repository,
      this.contactRepository,
      this.officeRepository);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Service>>> list({required List<Filter> filters}) {
    Map<String, String> params = {};
    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return repository.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> create(Map<String, dynamic> data) {
    return repository.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Service>> update(int id, Map<String, dynamic> data) {
    return repository.update(id, data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id) {
    return repository.delete(id);
  }

  @override
  Future<List<Contract>> getContracts() async {
    final result = await contactRepository.list({});
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