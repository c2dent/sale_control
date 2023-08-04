import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/filter.dart';
import 'package:hasap_admin/feature/coal/data/coal_models.dart';
import 'package:hasap_admin/feature/coal/data/coal_repository.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_repository.dart';
import 'package:injectable/injectable.dart';

abstract class CoalInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, List<Coal>>> list({required List<Filter> filters});

  Future<Either<CommonResponseError<DefaultApiError>, Coal>> create(Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Coal>> update(int id, Map<String, dynamic> data);

  Future<Either<CommonResponseError<DefaultApiError>, Map<String, String>>> delete(int id);

  Future<List<Contract>> getContracts();
}

@Singleton(as: CoalInteractor)
class CoalInteractorImpl extends CoalInteractor {

  final CoalRepository repository;

  final ContractRepository contactRepository;

  CoalInteractorImpl(this.repository, this.contactRepository);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Coal>>> list({required List<Filter> filters}) {
    Map<String, String> params = {};
    for (Filter filter in filters) {
      if (filter.filterWidget.value != null) {
        params[filter.parameterName] = filter.parameterValue(filter.filterWidget.value);
      }
    }

    return repository.list(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> create(Map<String, dynamic> data) {
    return repository.create(data);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Coal>> update(int id, Map<String, dynamic> data) {
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

}