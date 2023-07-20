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

  User? _user;

  Future<Either<CommonResponseError<DefaultApiError>, User>> getUser() async {
    if (_user != null) {
      return Either.right(_user!);
    }

    final result = await _dioErrorHandler.processRequest(() => _client.get('/current-user/'));

    if (result.isLeft) return Either.left(result.left);

    _user = User.fromJson(result.right.data['user']);

    return Either.right(_user!);
  }
}
