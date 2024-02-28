import 'dart:async';

import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/user_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<Either<CommonResponseError<DefaultApiError>, User>> authorize(String username, String pass);

  Future<Either<CommonResponseError<DefaultApiError>, bool>> register(String username, String email, String pass);
}

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final UserApiService _apiService;

  AuthRepositoryImpl(this._apiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, User>> authorize(String username, String pass) async {
    return _apiService.authorize(username, pass);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> register(String username, String email, String pass) async {
    return _apiService.register(username, email, pass);
  }
}
