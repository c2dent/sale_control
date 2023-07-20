import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/services/region_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class RegionRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Region>>> getRegions(Map<String, String> params);
}

@Singleton(as: RegionRepository)
class RegionRepositoryImpl extends RegionRepository {
  final RegionApiService regionApiService;

  RegionRepositoryImpl(this.regionApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Region>>> getRegions(Map<String, String> params) {
    return regionApiService.getRegions(params);
  }
}