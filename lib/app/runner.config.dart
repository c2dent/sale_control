// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:dio/dio.dart' as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import '../arch/dio_error_handler/dio_error_handler.dart' as _i19;
import '../arch/dio_error_handler/models/dio_error_models.dart' as _i20;
import '../arch/key_value_store_migrator/key_value_store.dart' as _i8;
import '../arch/key_value_store_migrator/key_value_store_migrator.dart' as _i21;
import '../core/data_sync_services/region_sync.dart' as _i32;
import '../core/http/dio_client_creator.dart' as _i18;
import '../core/http/dio_client_module.dart' as _i65;
import '../core/http/link_provider.dart' as _i10;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i6;
import '../core/infrastructure/infrastructure_module.dart' as _i66;
import '../core/infrastructure/logger_bloc_observer.dart' as _i12;
import '../core/infrastructure/notify_error_snackbar.dart' as _i14;
import '../core/mappers/region_sync_mapper.dart' as _i15;
import '../core/repositories/employee_repository.dart' as _i25;
import '../core/repositories/office_repository.dart' as _i27;
import '../core/repositories/region_repository.dart' as _i31;
import '../core/services/data_sync_service.dart' as _i44;
import '../core/services/employee_api_service.dart' as _i24;
import '../core/services/office_api_service.dart' as _i26;
import '../core/services/region_api_service.dart' as _i30;
import '../core/services/settings_service.dart' as _i48;
import '../core/storage/datebase/app_database.dart' as _i17;
import '../core/storage/datebase/daos/region_dao.dart' as _i22;
import '../core/storage/datebase/db_module.dart' as _i67;
import '../core/storage/migration_observer_logger.dart' as _i13;
import '../core/storage/sharedPrefs/prefs_key_value_store.dart' as _i9;
import '../core/user/user_repository.dart' as _i35;
import '../feature/auth/data/auth_repository.dart' as _i36;
import '../feature/auth/domain/auth_interactor.dart' as _i49;
import '../feature/auth/presentation/bloc/login_bloc.dart' as _i54;
import '../feature/client/data/client_repository.dart' as _i38;
import '../feature/client/data/services/client_api_service.dart' as _i37;
import '../feature/client/domain/client_interactor.dart' as _i50;
import '../feature/client/presentation/create/bloc/client_create_bloc.dart'
    as _i61;
import '../feature/client/presentation/list/bloc/client_bloc.dart' as _i60;
import '../feature/contract/data/contract_repository.dart' as _i40;
import '../feature/contract/data/services/contract_api_service.dart' as _i39;
import '../feature/contract/domain/contract_interactor.dart' as _i51;
import '../feature/contract/presentation/create/bloc/contract_create_bloc.dart'
    as _i63;
import '../feature/contract/presentation/list/bloc/contract_bloc.dart' as _i62;
import '../feature/contract_return/data/contract_return_repository.dart'
    as _i42;
import '../feature/contract_return/data/services/contract_return_api_services.dart'
    as _i41;
import '../feature/contract_return/domain/contract_return_interactor.dart'
    as _i43;
import '../feature/contract_return/presentation/create/bloc/contract_return_bloc.dart'
    as _i53;
import '../feature/contract_return/presentation/list/bloc/contract_return_bloc.dart'
    as _i52;
import '../feature/payment/data/payment_repository.dart' as _i29;
import '../feature/payment/data/services/payment_api_service.dart' as _i28;
import '../feature/payment/domain/payment_interactor.dart' as _i45;
import '../feature/payment/presentation/create/bloc/payment_create_bloc.dart'
    as _i56;
import '../feature/payment/presentation/list/bloc/payment_bloc.dart' as _i55;
import '../feature/profile/domain/profile_interactor.dart' as _i46;
import '../feature/profile/presentation/bloc/profile_bloc.dart' as _i57;
import '../feature/service/data/services/service_api_service.dart' as _i33;
import '../feature/service/data/services_repository.dart' as _i34;
import '../feature/service/domain/service_interactor.dart' as _i47;
import '../feature/service/presentation/create/bloc/service_create_bloc.dart'
    as _i59;
import '../feature/service/presentation/list/bloc/service_bloc.dart' as _i58;
import 'app_environment.dart' as _i7;
import 'router/app_router.dart' as _i3;
import 'router/router_logging_observer.dart' as _i16;
import 'router/router_module.dart' as _i64;
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
  final dbModule = _$DbModule();
  final dioClientModule = _$DioClientModule();
  gh.singleton<_i3.AppRouter>(routerModule.appRouter());
  gh.singleton<_i4.AppThemeBloc>(_i4.AppThemeBloc());
  gh.singleton<_i5.Connectivity>(infrastructureModule.connectivity);
  gh.lazySingleton<_i6.DioLoggerWrapper>(
      () => infrastructureModule.dioLoggerWrapper(gh<_i7.AppEnvironment>()));
  gh.singleton<_i8.KeyValueStore>(_i9.SharedPrefsKeyValueStore());
  gh.singleton<_i10.LinkProvider>(_i10.LinkProvider());
  gh.lazySingleton<_i11.Logger>(
      () => infrastructureModule.logger(gh<_i7.AppEnvironment>()));
  gh.singleton<_i12.LoggerBlocObserver>(
      _i12.LoggerBlocObserver(gh<_i11.Logger>()));
  gh.singleton<_i13.MigrationObserverLogger>(
      _i13.MigrationObserverLogger(gh<_i11.Logger>()));
  gh.singleton<_i14.NotifyErrorSnackbar>(_i14.NotifyErrorSnackbar());
  gh.factory<_i15.RegionSyncMapper>(() => _i15.RegionSyncMapper());
  gh.factory<_i16.RouterLoggingObserver>(
      () => routerModule.routerLoggingObserver(
            gh<_i11.Logger>(),
            gh<_i3.AppRouter>(),
          ));
  gh.singleton<_i17.AppDatabase>(
      dbModule.appDatabase(observer: gh<_i13.MigrationObserverLogger>()));
  gh.singleton<_i18.DioClientCreator>(_i18.DioClientCreatorImpl(
    linkProvider: gh<_i10.LinkProvider>(),
    logger: gh<_i6.DioLoggerWrapper>(),
    appEnvironment: gh<_i7.AppEnvironment>(),
  ));
  gh.lazySingleton<_i19.DioErrorHandler<_i20.DefaultApiError>>(
      () => dioClientModule.makeDioErrorHandler(gh<_i11.Logger>()));
  gh.singleton<_i21.KeyValueStoreMigrator>(_i9.KeyValueStoreMigratorImpl(
    keyValueStore: gh<_i8.KeyValueStore>(),
    observer: gh<_i13.MigrationObserverLogger>(),
  ));
  gh.factory<_i22.RegionDao>(() => _i22.RegionDao(gh<_i17.AppDatabase>()));
  await gh.singletonAsync<_i23.Dio>(
    () => dioClientModule.makeDioClient(gh<_i18.DioClientCreator>()),
    instanceName: 'hasapHttpClient',
    preResolve: true,
  );
  gh.singleton<_i24.EmployeeApiService>(_i24.EmployeeApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i25.EmployeeRepository>(
      _i25.EmployeeRepositoryImpl(gh<_i24.EmployeeApiService>()));
  gh.singleton<_i26.OfficeApiService>(_i26.OfficeApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i27.OfficeRepository>(
      _i27.OfficeRepositoryImpl(gh<_i26.OfficeApiService>()));
  gh.singleton<_i28.PaymentApiService>(_i28.PaymentApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i29.PaymentRepository>(
      _i29.PaymentRepositoryImpl(gh<_i28.PaymentApiService>()));
  gh.singleton<_i30.RegionApiService>(_i30.RegionApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i31.RegionRepository>(
      _i31.RegionRepositoryImpl(gh<_i30.RegionApiService>()));
  gh.factory<_i32.RegionSyncService>(() => _i32.RegionSyncService(
        gh<_i30.RegionApiService>(),
        gh<_i22.RegionDao>(),
        gh<_i15.RegionSyncMapper>(),
      ));
  gh.singleton<_i33.ServiceApiService>(_i33.ServiceApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i34.ServiceRepository>(
      _i34.ServiceRepositoryImpl(gh<_i33.ServiceApiService>()));
  gh.singleton<_i35.UserRepository>(_i35.UserRepository(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i36.AuthRepository>(_i36.AuthRepositoryImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i37.ClientApiService>(_i37.ClientApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i38.ClientRepository>(
      _i38.ClientRepositoryImpl(gh<_i37.ClientApiService>()));
  gh.singleton<_i39.ContractApiService>(_i39.ContractApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i40.ContractRepository>(
      _i40.ContractRepositoryImpl(gh<_i39.ContractApiService>()));
  gh.singleton<_i41.ContractReturnApiService>(_i41.ContractReturnApiServiceImpl(
    gh<_i23.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i19.DioErrorHandler<_i20.DefaultApiError>>(),
  ));
  gh.singleton<_i42.ContractReturnRepository>(
      _i42.ContractReturnRepositoryImpl(gh<_i41.ContractReturnApiService>()));
  gh.singleton<_i43.ContractorReturnInteractor>(
      _i43.ContractReturnInteractorImpl(
    gh<_i42.ContractReturnRepository>(),
    gh<_i25.EmployeeRepository>(),
    gh<_i40.ContractRepository>(),
    gh<_i27.OfficeRepository>(),
  ));
  gh.singleton<_i44.DataSyncService>(_i44.DataSyncServiceImpl(
    gh<_i32.RegionSyncService>(),
    gh<_i8.KeyValueStore>(),
  ));
  gh.singleton<_i45.PaymentInteractor>(_i45.PaymentInteractorImpl(
    gh<_i29.PaymentRepository>(),
    gh<_i25.EmployeeRepository>(),
    gh<_i40.ContractRepository>(),
    gh<_i27.OfficeRepository>(),
  ));
  gh.singleton<_i46.ProfileInteractor>(_i46.ProfileInteractorImpl(
    gh<_i36.AuthRepository>(),
    gh<_i27.OfficeRepository>(),
  ));
  gh.singleton<_i47.ServiceInteractor>(_i47.ServiceInteractorImpl(
    gh<_i34.ServiceRepository>(),
    gh<_i40.ContractRepository>(),
    gh<_i27.OfficeRepository>(),
  ));
  gh.singleton<_i48.SettingsService>(
      _i48.SettingsServiceImpl(gh<_i35.UserRepository>()));
  gh.singleton<_i49.AuthInteractor>(
      _i49.AuthInteractorImpl(gh<_i36.AuthRepository>()));
  gh.singleton<_i50.ClientInteractor>(_i50.ClientInteractorImpl(
    gh<_i38.ClientRepository>(),
    gh<_i31.RegionRepository>(),
    gh<_i25.EmployeeRepository>(),
    gh<_i27.OfficeRepository>(),
  ));
  gh.singleton<_i51.ContractInteractor>(_i51.ContractInteractorImpl(
    gh<_i40.ContractRepository>(),
    gh<_i31.RegionRepository>(),
    gh<_i25.EmployeeRepository>(),
    gh<_i38.ClientRepository>(),
    gh<_i27.OfficeRepository>(),
  ));
  gh.factory<_i52.ContractReturnBloc>(() => _i52.ContractReturnBloc(
        gh<_i43.ContractorReturnInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i53.ContractReturnCreateBloc>(() => _i53.ContractReturnCreateBloc(
        gh<_i43.ContractorReturnInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i54.LoginBloc>(() => _i54.LoginBloc(
        gh<_i49.AuthInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i55.PaymentBloc>(() => _i55.PaymentBloc(
        gh<_i45.PaymentInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i56.PaymentCreateBloc>(() => _i56.PaymentCreateBloc(
        gh<_i45.PaymentInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i57.ProfileBloc>(
      () => _i57.ProfileBloc(gh<_i46.ProfileInteractor>()));
  gh.factory<_i58.ServiceBloc>(() => _i58.ServiceBloc(
        gh<_i14.NotifyErrorSnackbar>(),
        gh<_i47.ServiceInteractor>(),
      ));
  gh.factory<_i59.ServiceCreateBloc>(() => _i59.ServiceCreateBloc(
        gh<_i47.ServiceInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i60.ClientBloc>(() => _i60.ClientBloc(
        gh<_i50.ClientInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i61.ClientCreateBloc>(() => _i61.ClientCreateBloc(
        gh<_i50.ClientInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i62.ContractBloc>(() => _i62.ContractBloc(
        gh<_i51.ContractInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i63.ContractCreateBloc>(() => _i63.ContractCreateBloc(
        gh<_i51.ContractInteractor>(),
        gh<_i14.NotifyErrorSnackbar>(),
      ));
  return getIt;
}

class _$RouterModule extends _i64.RouterModule {}

class _$DioClientModule extends _i65.DioClientModule {}

class _$InfrastructureModule extends _i66.InfrastructureModule {}

class _$DbModule extends _i67.DbModule {}
