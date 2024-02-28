import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/services/office_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/office_dao.dart';
import 'package:injectable/injectable.dart';

abstract class OfficeRepository {
  Future<Either<CommonResponseError<DefaultApiError>, List<Office>>> getList(Map<String, String>? params);

  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateBalance();

  Future<Either<DriftRequestError<DefaultDriftError>, OfficeTableData>> get(String id);
}

@Singleton(as: OfficeRepository)
class OfficeRepositoryImpl extends OfficeRepository {
  final OfficeDao _dao;

  OfficeRepositoryImpl(this._dao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, List<Office>>> getList(Map<String, String>? params) async {
    List<Office> offices = await _dao.getAllOffices();
    return Either.right(offices);
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateBalance() {
    return _dao.recalculateBalance();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, OfficeTableData>> get(String id) {
    return _dao.get(id);
  }
}
