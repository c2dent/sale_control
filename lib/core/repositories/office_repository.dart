import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/services/office_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class OfficeRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Office>>> getList(Map<String, String>? params);
  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office);
}

@Singleton(as: OfficeRepository)
class OfficeRepositoryImpl extends OfficeRepository {
  final OfficeApiService service;

  OfficeRepositoryImpl(this.service);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Office>>> getList(Map<String, String>? params) {
    return service.getList(params);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office) {
    return service.recalculateBalance(office);
  }
}