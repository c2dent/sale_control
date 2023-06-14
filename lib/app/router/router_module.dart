
import 'package:hasap_admin/app/router/app_router.dart';
import 'package:hasap_admin/app/router/router_logging_observer.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Модуль, формирующий сущности для роутинга
@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter(
      // AuthGuard authGuard,
      // InitGuard initGuard,
      ) {
    return AppRouter(
      // authGuard: authGuard,
      // initGuard: initGuard,
    );
  }

  // @singleton
  // AuthGuard authGuard(UserRepository userRepository) => AuthGuard(isAuthorized: userRepository.isAuthorized);

  @injectable
  RouterLoggingObserver routerLoggingObserver(
      Logger logger,
      AppRouter appRouter,
      ) {
    return RouterLoggingObserver(
      logger: logger,
      appRouter: appRouter,
    );
  }
}