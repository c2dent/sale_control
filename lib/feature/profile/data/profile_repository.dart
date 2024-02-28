import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/user_api_service.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileRepository {
  Future<Either<CommonResponseError<DefaultApiError>, User>> currentUser();
}

@Singleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final UserApiService _apiService;

  ProfileRepositoryImpl(this._apiService);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, User>> currentUser() {
    return _apiService.currentUser();
  }

}