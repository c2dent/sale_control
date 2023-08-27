import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class UserRepository {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  UserRepository(
    @Named(InjectableNames.hasapHttpClient) this._client,
    this._dioErrorHandler,
  );


  Future<Either<CommonResponseError<DefaultApiError>, User>> getUser() async {

    final result = await _dioErrorHandler.processRequest(() => _client.get('/current-user/'));

    if (result.isLeft) return Either.left(result.left);

    User user = User.fromJson(result.right.data);

    return Either.right(user);
  }
}
