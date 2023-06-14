import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/user/user_repository.dart';
import 'package:injectable/injectable.dart';

/// Протокол для работы с интерактором выполняющим логику авторизации
abstract class AuthInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, bool>> authorize(String username, String pass);
}

/// Базовая реализация [AuthInteractor]
@Singleton(as: AuthInteractor)
class AuthInteractorImpl implements AuthInteractor {
  final UserRepository _userRepository;

  AuthInteractorImpl(
    this._userRepository,
  );

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> authorize(String username, String pass) async {
    final result = await _userRepository.authorize(username, pass);
    if (result.isLeft) return Either.left(result.left);
    return const Either.right(true);
  }
}
