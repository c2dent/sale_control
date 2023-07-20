import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/feature/auth/data/auth_repository.dart';
import 'package:injectable/injectable.dart';

/// Протокол для работы с интерактором выполняющим логику авторизации
abstract class AuthInteractor {
  Future<Either<CommonResponseError<DefaultApiError>, bool>> authorize(String username, String pass);
}

/// Базовая реализация [AuthInteractor]
@Singleton(as: AuthInteractor)
class AuthInteractorImpl implements AuthInteractor {
  final AuthRepository _authRepository;

  AuthInteractorImpl(
    this._authRepository,
  );

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> authorize(String username, String pass) async {
    final result = await _authRepository.authorize(username, pass);
    if (result.isLeft) return Either.left(result.left);
    return const Either.right(true);
  }
}
