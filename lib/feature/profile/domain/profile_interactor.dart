import 'package:flutter/material.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/repositories/office_repository.dart';
import 'package:hasap_admin/feature/auth/data/auth_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileInteractor {
  void unAuthorize(BuildContext context);

  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office);
}

@Singleton(as: ProfileInteractor)
class ProfileInteractorImpl extends ProfileInteractor {
  final AuthRepository _authRepository;
  final OfficeRepository _officeRepository;

  ProfileInteractorImpl(this._authRepository, this._officeRepository);

  @override
  void unAuthorize(BuildContext context) {
    _authRepository.unAuthorize(context);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, Office>> recalculateBalance(Office office) {
    return _officeRepository.recalculateBalance(office);
  }
}