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
import '../core/http/dio_client_module.dart' as _i31;
import '../core/http/link_provider.dart' as _i8;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i6;
import '../core/infrastructure/infrastructure_module.dart' as _i32;
import '../core/infrastructure/logger_bloc_observer.dart' as _i10;
import '../core/infrastructure/notify_error_snackbar.dart' as _i11;
import '../core/repositories/area_repository.dart' as _i23;
import '../core/repositories/locality_repository.dart' as _i18;
import '../core/repositories/region_repository.dart' as _i20;
import '../core/services/area_api_service.dart' as _i22;
import '../core/services/locality_api_service.dart' as _i17;
import '../core/services/region_api_service.dart' as _i19;
import '../core/user/user_repository.dart' as _i21;
import '../feature/auth/domain/auth_interactor.dart' as _i24;
import '../feature/auth/presentation/bloc/login_bloc.dart' as _i27;
import '../feature/client/data/client_repository.dart' as _i26;
import '../feature/client/data/services/client_api_service.dart' as _i25;
import '../feature/client/domain/client_interactor.dart' as _i28;
import '../feature/client/presentation/bloc/client_bloc.dart' as _i29;
import 'app_environment.dart' as _i7;
import 'router/app_router.dart' as _i3;
import 'router/router_logging_observer.dart' as _i12;
import 'router/router_module.dart' as _i30;
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
    instanceName: 'hasapHttpClient',
    preResolve: true,
  );
  gh.singleton<_i17.LocalityApiService>(_i17.LocalityApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i18.LocalityRepository>(
      _i18.LocalityRepositoryImpl(gh<_i17.LocalityApiService>()));
  gh.singleton<_i19.RegionApiService>(_i19.RegionApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i20.RegionRepository>(
      _i20.RegionRepositoryImpl(gh<_i19.RegionApiService>()));
  gh.singleton<_i21.UserRepository>(_i21.UserRepositoryImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i22.AreaApiService>(_i22.AreaApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i23.AreaRepository>(
      _i23.AreaRepositoryImpl(gh<_i22.AreaApiService>()));
  gh.singleton<_i24.AuthInteractor>(
      _i24.AuthInteractorImpl(gh<_i21.UserRepository>()));
  gh.singleton<_i25.ClientApiService>(_i25.ClientApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i26.ClientRepository>(
      _i26.ClientRepositoryImpl(gh<_i25.ClientApiService>()));
  gh.factory<_i27.LoginBloc>(() => _i27.LoginBloc(
        gh<_i24.AuthInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.singleton<_i28.ClientInteractor>(_i28.ClientInteractorImpl(
    gh<_i26.ClientRepository>(),
    gh<_i20.RegionRepository>(),
    gh<_i23.AreaRepository>(),
    gh<_i18.LocalityRepository>(),
  ));
  gh.factory<_i29.ClientBloc>(() => _i29.ClientBloc(
        gh<_i28.ClientInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  return getIt;
}

class _$RouterModule extends _i30.RouterModule {}

class _$DioClientModule extends _i31.DioClientModule {}

class _$InfrastructureModule extends _i32.InfrastructureModule {}
