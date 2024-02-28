import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileInteractor {
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateBalance();
  Future<Either<DriftRequestError<DefaultDriftError>, OfficeTableData>> get(String id);
}

@Singleton(as: ProfileInteractor)
class ProfileInteractorImpl extends ProfileInteractor {
  final OfficeRepository _officeRepository;

  ProfileInteractorImpl(this._officeRepository);

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, bool>> recalculateBalance() {
    return _officeRepository.recalculateBalance();
  }

  @override
  Future<Either<DriftRequestError<DefaultDriftError>, OfficeTableData>> get(String id) {
    return _officeRepository.get(id);
  }
}