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
import '../core/http/dio_client_module.dart' as _i56;
import '../core/http/link_provider.dart' as _i8;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i6;
import '../core/infrastructure/infrastructure_module.dart' as _i57;
import '../core/infrastructure/logger_bloc_observer.dart' as _i10;
import '../core/infrastructure/notify_error_snackbar.dart' as _i11;
import '../core/repositories/employee_repository.dart' as _i18;
import '../core/repositories/office_repository.dart' as _i20;
import '../core/repositories/region_repository.dart' as _i24;
import '../core/services/employee_api_service.dart' as _i17;
import '../core/services/office_api_service.dart' as _i19;
import '../core/services/region_api_service.dart' as _i23;
import '../core/services/settings_service.dart' as _i39;
import '../core/user/user_repository.dart' as _i27;
import '../feature/auth/data/auth_repository.dart' as _i28;
import '../feature/auth/domain/auth_interactor.dart' as _i40;
import '../feature/auth/presentation/bloc/login_bloc.dart' as _i45;
import '../feature/client/data/client_repository.dart' as _i30;
import '../feature/client/data/services/client_api_service.dart' as _i29;
import '../feature/client/domain/client_interactor.dart' as _i41;
import '../feature/client/presentation/create/bloc/client_create_bloc.dart'
    as _i52;
import '../feature/client/presentation/list/bloc/client_bloc.dart' as _i51;
import '../feature/contract/data/contract_repository.dart' as _i32;
import '../feature/contract/data/services/contract_api_service.dart' as _i31;
import '../feature/contract/domain/contract_interactor.dart' as _i42;
import '../feature/contract/presentation/create/bloc/contract_create_bloc.dart'
    as _i54;
import '../feature/contract/presentation/list/bloc/contract_bloc.dart' as _i53;
import '../feature/contract_return/data/contract_return_repository.dart'
    as _i34;
import '../feature/contract_return/data/services/contract_return_api_services.dart'
    as _i33;
import '../feature/contract_return/domain/contract_return_interactor.dart'
    as _i35;
import '../feature/contract_return/presentation/create/bloc/contract_return_bloc.dart'
    as _i44;
import '../feature/contract_return/presentation/list/bloc/contract_return_bloc.dart'
    as _i43;
import '../feature/payment/data/payment_repository.dart' as _i22;
import '../feature/payment/data/services/payment_api_service.dart' as _i21;
import '../feature/payment/domain/payment_interactor.dart' as _i36;
import '../feature/payment/presentation/create/bloc/payment_create_bloc.dart'
    as _i47;
import '../feature/payment/presentation/list/bloc/payment_bloc.dart' as _i46;
import '../feature/profile/domain/profile_interactor.dart' as _i37;
import '../feature/profile/presentation/bloc/profile_bloc.dart' as _i48;
import '../feature/service/data/services/service_api_service.dart' as _i25;
import '../feature/service/data/services_repository.dart' as _i26;
import '../feature/service/domain/service_interactor.dart' as _i38;
import '../feature/service/presentation/create/bloc/service_create_bloc.dart'
    as _i50;
import '../feature/service/presentation/list/bloc/service_bloc.dart' as _i49;
import 'app_environment.dart' as _i7;
import 'router/app_router.dart' as _i3;
import 'router/router_logging_observer.dart' as _i12;
import 'router/router_module.dart' as _i55;
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
  gh.singleton<_i17.EmployeeApiService>(_i17.EmployeeApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i18.EmployeeRepository>(
      _i18.EmployeeRepositoryImpl(gh<_i17.EmployeeApiService>()));
  gh.singleton<_i19.OfficeApiService>(_i19.OfficeApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i20.OfficeRepository>(
      _i20.OfficeRepositoryImpl(gh<_i19.OfficeApiService>()));
  gh.singleton<_i21.PaymentApiService>(_i21.PaymentApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i22.PaymentRepository>(
      _i22.PaymentRepositoryImpl(gh<_i21.PaymentApiService>()));
  gh.singleton<_i23.RegionApiService>(_i23.RegionApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i24.RegionRepository>(
      _i24.RegionRepositoryImpl(gh<_i23.RegionApiService>()));
  gh.singleton<_i25.ServiceApiService>(_i25.ServiceApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i26.ServiceRepository>(
      _i26.ServiceRepositoryImpl(gh<_i25.ServiceApiService>()));
  gh.singleton<_i27.UserRepository>(_i27.UserRepository(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i28.AuthRepository>(_i28.AuthRepositoryImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i29.ClientApiService>(_i29.ClientApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i30.ClientRepository>(
      _i30.ClientRepositoryImpl(gh<_i29.ClientApiService>()));
  gh.singleton<_i31.ContractApiService>(_i31.ContractApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i32.ContractRepository>(
      _i32.ContractRepositoryImpl(gh<_i31.ContractApiService>()));
  gh.singleton<_i33.ContractReturnApiService>(_i33.ContractReturnApiServiceImpl(
    gh<_i16.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i14.DioErrorHandler<_i15.DefaultApiError>>(),
  ));
  gh.singleton<_i34.ContractReturnRepository>(
      _i34.ContractReturnRepositoryImpl(gh<_i33.ContractReturnApiService>()));
  gh.singleton<_i35.ContractorReturnInteractor>(
      _i35.ContractReturnInteractorImpl(
    gh<_i34.ContractReturnRepository>(),
    gh<_i18.EmployeeRepository>(),
    gh<_i32.ContractRepository>(),
    gh<_i20.OfficeRepository>(),
  ));
  gh.singleton<_i36.PaymentInteractor>(_i36.PaymentInteractorImpl(
    gh<_i22.PaymentRepository>(),
    gh<_i18.EmployeeRepository>(),
    gh<_i32.ContractRepository>(),
    gh<_i20.OfficeRepository>(),
  ));
  gh.singleton<_i37.ProfileInteractor>(_i37.ProfileInteractorImpl(
    gh<_i28.AuthRepository>(),
    gh<_i20.OfficeRepository>(),
  ));
  gh.singleton<_i38.ServiceInteractor>(_i38.ServiceInteractorImpl(
    gh<_i26.ServiceRepository>(),
    gh<_i32.ContractRepository>(),
    gh<_i20.OfficeRepository>(),
  ));
  gh.singleton<_i39.SettingsService>(
      _i39.SettingsServiceImpl(gh<_i27.UserRepository>()));
  gh.singleton<_i40.AuthInteractor>(
      _i40.AuthInteractorImpl(gh<_i28.AuthRepository>()));
  gh.singleton<_i41.ClientInteractor>(_i41.ClientInteractorImpl(
    gh<_i30.ClientRepository>(),
    gh<_i24.RegionRepository>(),
    gh<_i18.EmployeeRepository>(),
    gh<_i20.OfficeRepository>(),
  ));
  gh.singleton<_i42.ContractInteractor>(_i42.ContractInteractorImpl(
    gh<_i32.ContractRepository>(),
    gh<_i24.RegionRepository>(),
    gh<_i18.EmployeeRepository>(),
    gh<_i30.ClientRepository>(),
    gh<_i20.OfficeRepository>(),
  ));
  gh.factory<_i43.ContractReturnBloc>(() => _i43.ContractReturnBloc(
        gh<_i35.ContractorReturnInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i44.ContractReturnCreateBloc>(() => _i44.ContractReturnCreateBloc(
        gh<_i35.ContractorReturnInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i45.LoginBloc>(() => _i45.LoginBloc(
        gh<_i40.AuthInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i46.PaymentBloc>(() => _i46.PaymentBloc(
        gh<_i36.PaymentInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i47.PaymentCreateBloc>(() => _i47.PaymentCreateBloc(
        gh<_i36.PaymentInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i48.ProfileBloc>(
      () => _i48.ProfileBloc(gh<_i37.ProfileInteractor>()));
  gh.factory<_i49.ServiceBloc>(() => _i49.ServiceBloc(
        gh<_i11.NotifyErrorSnackbar>(),
        gh<_i38.ServiceInteractor>(),
      ));
  gh.factory<_i50.ServiceCreateBloc>(() => _i50.ServiceCreateBloc(
        gh<_i38.ServiceInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i51.ClientBloc>(() => _i51.ClientBloc(
        gh<_i41.ClientInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i52.ClientCreateBloc>(() => _i52.ClientCreateBloc(
        gh<_i41.ClientInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i53.ContractBloc>(() => _i53.ContractBloc(
        gh<_i42.ContractInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i54.ContractCreateBloc>(() => _i54.ContractCreateBloc(
        gh<_i42.ContractInteractor>(),
        gh<_i11.NotifyErrorSnackbar>(),
      ));
  return getIt;
}

class _$RouterModule extends _i55.RouterModule {}

class _$DioClientModule extends _i56.DioClientModule {}

class _$InfrastructureModule extends _i57.InfrastructureModule {}
