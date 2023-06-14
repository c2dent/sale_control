// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:dio/dio.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import '../arch/dio_error_handler/dio_error_handler.dart' as _i14;
import '../arch/dio_error_handler/models/dio_error_models.dart' as _i15;
import '../core/http/dio_client_creator.dart' as _i13;
import '../core/http/dio_client_module.dart' as _i21;
import '../core/http/link_provider.dart' as _i8;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i6;
import '../core/infrastructure/infrastructure_module.dart' as _i22;
import '../core/infrastructure/logger_bloc_observer.dart' as _i10;
import '../core/infrastructure/notify_error_snackbar.dart' as _i11;
import '../core/user/user_repository.dart' as _i17;
import '../feature/auth/domain/auth_interactor.dart' as _i18;
import '../feature/auth/presentation/bloc/login_bloc.dart' as _i19;
import 'app_environment.dart' as _i7;
import 'router/app_router.dart' as _i3;
import 'router/router_logging_observer.dart' as _i12;
import 'router/router_module.dart' as _i20;
import 'theme/bloc/app_theme_bloc.dart' as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final routerModule = _$RouterModule();
  final infrastructureModule = _$InfrastructureModule();
  final dioClientModule = _$DioClientModule();
  gh.singleton<_i3.AppRouter>(routerModule.appRouter());
  gh.singleton<_i4.AppThemeBloc>(_i4.AppThemeBloc());
  gh.singleton<_i5.Connectivity>(infrastructureModule.connectivity);
  gh.lazySingleton<_i6.DioLoggerWrapper>(
      () => infrastructureModule.dioLoggerWrapper(gh<_i7.AppEnvironment>()));
  gh.singleton<_i8.LinkProvider>(_i8.LinkProvider());
  gh.lazySingleton<_i9.Logger>(
      () => infrastructureModule.logger(gh<_i7.AppEnvironment>()));
  gh.singleton<_i10.LoggerBlocObserver>(
      _i10.LoggerBlocObserver(gh<_i9.Logger>()));
  gh.singleton<_i11.NotifyErrorSnackbar>(_i11.NotifyErrorSnackbar());
  gh.factory<_i12.RouterLoggingObserver>(
      () => routerModule.routerLoggingObserver(
            gh<_i9.Logger>(),
            gh<_i3.AppRouter>(),
          ));
  gh.singleton<_i13.DioClientCreator>(_i13.DioClientCreatorImpl(
    linkProvider: gh<_i8.LinkProvider>(),
    logger: gh<_i6.DioLoggerWrapper>(),
    appEnvironment: gh<_i7.AppEnvironment>(),
  ));
  gh.lazySingleton<_i14.DioErrorHandler<_i15.DefaultApiError>>(
      () => dioClientModule.makeDioErrorHandler(gh<_i9.Logger>()));
  await gh.singletonAsync<_i16.Dio>(
    () => dioClientModule.makeDioClient(gh<_i13.DioClientCreator>()),
    instanceName: 'finspaceHttpClient',
    preResolve: true,
  );
  gh.singleton<_i17.UserRepository>(_i17.UserRepositoryImpl(
    gh<_i16.Dio>(instanceName: 'finspaceHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i18.AuthInteractor>(
      _i18.AuthInteractorImpl(gh<_i17.UserRepository>()));
  gh.factory<_i19.LoginBloc>(() => _i19.LoginBloc(
        gh<_i18.AuthInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  return getIt;
}

class _$RouterModule extends _i20.RouterModule {}

class _$DioClientModule extends _i21.DioClientModule {}

class _$InfrastructureModule extends _i22.InfrastructureModule {}
