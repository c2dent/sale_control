import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/locality.dart';
import 'package:hasap_admin/core/services/locality_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class LocalityRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Locality>>> getLocalities();
}

@Singleton(as: LocalityRepository)
class LocalityRepositoryImpl extends LocalityRepository {
  final LocalityApiService localityApiService;

  LocalityRepositoryImpl(this.localityApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Locality>>> getLocalities() {
    return localityApiService.getLocalities();
  }
}