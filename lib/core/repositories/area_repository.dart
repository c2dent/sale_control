import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/area.dart';
import 'package:hasap_admin/core/services/area_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class AreaRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Area>>> getAreas();
}

@Singleton(as: AreaRepository)
class AreaRepositoryImpl extends AreaRepository {
  final AreaApiService areaApiService;

  AreaRepositoryImpl(this.areaApiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Area>>> getAreas() {
    return areaApiService.getAreas();
  }
}