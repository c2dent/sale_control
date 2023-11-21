import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/services/office_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/daos/office_dao.dart';
import 'package:injectable/injectable.dart';

abstract class OfficeRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Office>>> getList(Map<String, String>? params);
  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office);
}

@Singleton(as: OfficeRepository)
class OfficeRepositoryImpl extends OfficeRepository {
  final OfficeDao officeDao;
  final OfficeApiService service;

  OfficeRepositoryImpl(this.officeDao, this.service);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Office>>> getList(Map<String, String>? params) async {
    List<Office> offices = await officeDao.getAllOffices();
    return Either.right(offices);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office) {
    return service.recalculateBalance(office);
  }
}