// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:dio/dio.dart' as _i43;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i12;

import '../arch/dio_error_handler/dio_error_handler.dart' as _i30;
import '../arch/dio_error_handler/models/dio_error_models.dart' as _i31;
import '../arch/drift_error_handler/drift_error_handler.dart' as _i32;
import '../arch/drift_error_handler/models/drift_error_models.dart' as _i33;
import '../arch/key_value_store_migrator/key_value_store.dart' as _i9;
import '../arch/key_value_store_migrator/key_value_store_migrator.dart' as _i35;
import '../core/data_sync_services/client_sync_service.dart' as _i64;
import '../core/data_sync_services/contract_return_sync_service.dart' as _i69;
import '../core/data_sync_services/contract_sync_service.dart' as _i70;
import '../core/data_sync_services/data_sync_service.dart' as _i72;
import '../core/data_sync_services/employee_sync_service.dart' as _i46;
import '../core/data_sync_services/office_sync_service.dart' as _i49;
import '../core/data_sync_services/operation_sync_service.dart' as _i51;
import '../core/data_sync_services/payment_sync_service.dart' as _i54;
import '../core/data_sync_services/region_sync_service.dart' as _i56;
import '../core/data_sync_services/service_sync_service.dart' as _i59;
import '../core/http/dio_client_creator.dart' as _i29;
import '../core/http/dio_client_module.dart' as _i93;
import '../core/http/link_provider.dart' as _i11;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i6;
import '../core/infrastructure/infrastructure_module.dart' as _i94;
import '../core/infrastructure/logger_bloc_observer.dart' as _i13;
import '../core/infrastructure/notify_error_snackbar.dart' as _i15;
import '../core/mappers/client_mapper.dart' as _i24;
import '../core/mappers/contract_mapper.dart' as _i26;
import '../core/mappers/contract_return_mapper.dart' as _i28;
import '../core/mappers/employee_mapper.dart' as _i8;
import '../core/mappers/office_mapper.dart' as _i16;
import '../core/mappers/operation_mapper.dart' as _i17;
import '../core/mappers/payment_mapper.dart' as _i18;
import '../core/mappers/region_mapper.dart' as _i19;
import '../core/mappers/service_mapper.dart' as _i21;
import '../core/repositories/employee_repository.dart' as _i45;
import '../core/repositories/office_repository.dart' as _i48;
import '../core/repositories/operation_repository.dart' as _i38;
import '../core/repositories/region_repository.dart' as _i41;
import '../core/services/employee_api_service.dart' as _i44;
import '../core/services/office_api_service.dart' as _i47;
import '../core/services/operation_api_servie.dart' as _i50;
import '../core/services/region_api_service.dart' as _i55;
import '../core/services/settings_service.dart' as _i76;
import '../core/storage/datebase/app_database.dart' as _i22;
import '../core/storage/datebase/daos/client_dao.dart' as _i23;
import '../core/storage/datebase/daos/contract_dao.dart' as _i25;
import '../core/storage/datebase/daos/contract_return_dao.dart' as _i27;
import '../core/storage/datebase/daos/employee_dao.dart' as _i34;
import '../core/storage/datebase/daos/office_dao.dart' as _i36;
import '../core/storage/datebase/daos/operation_dao.dart' as _i37;
import '../core/storage/datebase/daos/payment_dao.dart' as _i39;
import '../core/storage/datebase/daos/region_dao.dart' as _i40;
import '../core/storage/datebase/daos/service_dao.dart' as _i42;
import '../core/storage/datebase/db_module.dart' as _i95;
import '../core/storage/migration_observer_logger.dart' as _i14;
import '../core/storage/sharedPrefs/prefs_key_value_store.dart' as _i10;
import '../core/user/user_repository.dart' as _i60;
import '../feature/auth/data/auth_repository.dart' as _i61;
import '../feature/auth/domain/auth_interactor.dart' as _i77;
import '../feature/auth/presentation/bloc/login_bloc.dart' as _i82;
import '../feature/client/data/client_repository.dart' as _i63;
import '../feature/client/data/services/client_api_service.dart' as _i62;
import '../feature/client/domain/client_interactor.dart' as _i78;
import '../feature/client/presentation/create/bloc/client_create_bloc.dart'
    as _i89;
import '../feature/client/presentation/list/bloc/client_bloc.dart' as _i88;
import '../feature/contract/data/contract_repository.dart' as _i66;
import '../feature/contract/data/services/contract_api_service.dart' as _i65;
import '../feature/contract/domain/contract_interactor.dart' as _i79;
import '../feature/contract/presentation/create/bloc/contract_create_bloc.dart'
    as _i91;
import '../feature/contract/presentation/list/bloc/contract_bloc.dart' as _i90;
import '../feature/contract_return/data/contract_return_repository.dart'
    as _i68;
import '../feature/contract_return/data/services/contract_return_api_services.dart'
    as _i67;
import '../feature/contract_return/domain/contract_return_interactor.dart'
    as _i71;
import '../feature/contract_return/presentation/create/bloc/contract_return_bloc.dart'
    as _i81;
import '../feature/contract_return/presentation/list/bloc/contract_return_bloc.dart'
    as _i80;
import '../feature/payment/data/payment_repository.dart' as _i53;
import '../feature/payment/data/services/payment_api_service.dart' as _i52;
import '../feature/payment/domain/payment_interactor.dart' as _i73;
import '../feature/payment/presentation/create/bloc/payment_create_bloc.dart'
    as _i84;
import '../feature/payment/presentation/list/bloc/payment_bloc.dart' as _i83;
import '../feature/profile/domain/profile_interactor.dart' as _i74;
import '../feature/profile/presentation/bloc/profile_bloc.dart' as _i85;
import '../feature/service/data/services/service_api_service.dart' as _i57;
import '../feature/service/data/services_repository.dart' as _i58;
import '../feature/service/domain/service_interactor.dart' as _i75;
import '../feature/service/presentation/create/bloc/service_create_bloc.dart'
    as _i87;
import '../feature/service/presentation/list/bloc/service_bloc.dart' as _i86;
import 'app_environment.dart' as _i7;
import 'router/app_router.dart' as _i3;
import 'router/router_logging_observer.dart' as _i20;
import 'router/router_module.dart' as _i92;
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
  gh.factory<_i8.EmployeeMapper>(() => _i8.EmployeeMapper());
  gh.singleton<_i9.KeyValueStore>(_i10.SharedPrefsKeyValueStore());
  gh.singleton<_i11.LinkProvider>(_i11.LinkProvider());
  gh.lazySingleton<_i12.Logger>(
      () => infrastructureModule.logger(gh<_i7.AppEnvironment>()));
  gh.singleton<_i13.LoggerBlocObserver>(
      _i13.LoggerBlocObserver(gh<_i12.Logger>()));
  gh.singleton<_i14.MigrationObserverLogger>(
      _i14.MigrationObserverLogger(gh<_i12.Logger>()));
  gh.singleton<_i15.NotifyErrorSnackbar>(_i15.NotifyErrorSnackbar());
  gh.factory<_i16.OfficeMapper>(() => _i16.OfficeMapper());
  gh.factory<_i17.OperationMapper>(
      () => _i17.OperationMapper(gh<_i9.KeyValueStore>()));
  gh.factory<_i18.PaymentMapper>(
      () => _i18.PaymentMapper(gh<_i9.KeyValueStore>()));
  gh.factory<_i19.RegionSyncMapper>(() => _i19.RegionSyncMapper());
  gh.factory<_i20.RouterLoggingObserver>(
      () => routerModule.routerLoggingObserver(
            gh<_i12.Logger>(),
            gh<_i3.AppRouter>(),
          ));
  gh.factory<_i21.ServiceMapper>(
      () => _i21.ServiceMapper(gh<_i9.KeyValueStore>()));
  gh.singleton<_i22.AppDatabase>(dbModule.appDatabase(
    observer: gh<_i14.MigrationObserverLogger>(),
    keyValueStore: gh<_i9.KeyValueStore>(),
  ));
  gh.factory<_i23.ClientDao>(() => _i23.ClientDao(gh<_i22.AppDatabase>()));
  gh.factory<_i24.ClientMapper>(
      () => _i24.ClientMapper(gh<_i9.KeyValueStore>()));
  gh.factory<_i25.ContractDao>(() => _i25.ContractDao(gh<_i22.AppDatabase>()));
  gh.factory<_i26.ContractMapper>(
      () => _i26.ContractMapper(gh<_i9.KeyValueStore>()));
  gh.factory<_i27.ContractReturnDao>(
      () => _i27.ContractReturnDao(gh<_i22.AppDatabase>()));
  gh.factory<_i28.ContractReturnMapper>(
      () => _i28.ContractReturnMapper(gh<_i9.KeyValueStore>()));
  gh.singleton<_i29.DioClientCreator>(_i29.DioClientCreatorImpl(
    linkProvider: gh<_i11.LinkProvider>(),
    logger: gh<_i6.DioLoggerWrapper>(),
    appEnvironment: gh<_i7.AppEnvironment>(),
  ));
  gh.lazySingleton<_i30.DioErrorHandler<_i31.DefaultApiError>>(
      () => dioClientModule.makeDioErrorHandler(gh<_i12.Logger>()));
  gh.singleton<_i32.DriftErrorHandler<_i33.DefaultDriftError>>(
      dbModule.makeDriftErrorHandler(gh<_i12.Logger>()));
  gh.factory<_i34.EmployeeDao>(() => _i34.EmployeeDao(gh<_i22.AppDatabase>()));
  gh.singleton<_i35.KeyValueStoreMigrator>(_i10.KeyValueStoreMigratorImpl(
    keyValueStore: gh<_i9.KeyValueStore>(),
    observer: gh<_i14.MigrationObserverLogger>(),
  ));
  gh.factory<_i36.OfficeDao>(() => _i36.OfficeDao(gh<_i22.AppDatabase>()));
  gh.factory<_i37.OperationDao>(
      () => _i37.OperationDao(gh<_i22.AppDatabase>()));
  gh.singleton<_i38.OperationRepository>(
      _i38.OperationRepositoryImpl(gh<_i37.OperationDao>()));
  gh.factory<_i39.PaymentDao>(() => _i39.PaymentDao(gh<_i22.AppDatabase>()));
  gh.factory<_i40.RegionDao>(() => _i40.RegionDao(gh<_i22.AppDatabase>()));
  gh.singleton<_i41.RegionRepository>(
      _i41.RegionRepositoryImpl(gh<_i40.RegionDao>()));
  gh.factory<_i42.ServiceDao>(() => _i42.ServiceDao(gh<_i22.AppDatabase>()));
  await gh.singletonAsync<_i43.Dio>(
    () => dioClientModule.makeDioClient(gh<_i29.DioClientCreator>()),
    instanceName: 'hasapHttpClient',
    preResolve: true,
  );
  gh.singleton<_i44.EmployeeApiService>(_i44.EmployeeApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i45.EmployeeRepository>(
      _i45.EmployeeRepositoryImpl(gh<_i44.EmployeeApiService>()));
  gh.factory<_i46.EmployeeSyncService>(() => _i46.EmployeeSyncService(
        gh<_i44.EmployeeApiService>(),
        gh<_i34.EmployeeDao>(),
      ));
  gh.singleton<_i47.OfficeApiService>(_i47.OfficeApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i48.OfficeRepository>(_i48.OfficeRepositoryImpl(
    gh<_i36.OfficeDao>(),
    gh<_i47.OfficeApiService>(),
  ));
  gh.factory<_i49.OfficeSyncService>(() => _i49.OfficeSyncService(
        gh<_i47.OfficeApiService>(),
        gh<_i36.OfficeDao>(),
      ));
  gh.singleton<_i50.OperationApiService>(_i50.OperationApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.factory<_i51.OperationSyncService>(() => _i51.OperationSyncService(
        gh<_i50.OperationApiService>(),
        gh<_i37.OperationDao>(),
        gh<_i17.OperationMapper>(),
      ));
  gh.singleton<_i52.PaymentApiService>(_i52.PaymentApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i53.PaymentRepository>(_i53.PaymentRepositoryImpl(
    gh<_i52.PaymentApiService>(),
    gh<_i39.PaymentDao>(),
  ));
  gh.factory<_i54.PaymentSyncService>(() => _i54.PaymentSyncService(
        gh<_i52.PaymentApiService>(),
        gh<_i39.PaymentDao>(),
        gh<_i18.PaymentMapper>(),
      ));
  gh.singleton<_i55.RegionApiService>(_i55.RegionApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.factory<_i56.RegionSyncService>(() => _i56.RegionSyncService(
        gh<_i55.RegionApiService>(),
        gh<_i40.RegionDao>(),
      ));
  gh.singleton<_i57.ServiceApiService>(_i57.ServiceApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i58.ServiceRepository>(_i58.ServiceRepositoryImpl(
    gh<_i57.ServiceApiService>(),
    gh<_i42.ServiceDao>(),
  ));
  gh.factory<_i59.ServiceSyncService>(() => _i59.ServiceSyncService(
        gh<_i57.ServiceApiService>(),
        gh<_i42.ServiceDao>(),
      ));
  gh.singleton<_i60.UserRepository>(_i60.UserRepository(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i61.AuthRepository>(_i61.AuthRepositoryImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i62.ClientApiService>(_i62.ClientApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i63.ClientRepository>(_i63.ClientRepositoryImpl(
    gh<_i62.ClientApiService>(),
    gh<_i23.ClientDao>(),
  ));
  gh.factory<_i64.ClientSyncService>(() => _i64.ClientSyncService(
        gh<_i62.ClientApiService>(),
        gh<_i23.ClientDao>(),
      ));
  gh.singleton<_i65.ContractApiService>(_i65.ContractApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i66.ContractRepository>(_i66.ContractRepositoryImpl(
    gh<_i65.ContractApiService>(),
    gh<_i25.ContractDao>(),
  ));
  gh.singleton<_i67.ContractReturnApiService>(_i67.ContractReturnApiServiceImpl(
    gh<_i43.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i30.DioErrorHandler<_i31.DefaultApiError>>(),
  ));
  gh.singleton<_i68.ContractReturnRepository>(_i68.ContractReturnRepositoryImpl(
    gh<_i67.ContractReturnApiService>(),
    gh<_i27.ContractReturnDao>(),
  ));
  gh.factory<_i69.ContractReturnSyncService>(
      () => _i69.ContractReturnSyncService(
            gh<_i67.ContractReturnApiService>(),
            gh<_i27.ContractReturnDao>(),
          ));
  gh.factory<_i70.ContractSyncService>(() => _i70.ContractSyncService(
        gh<_i65.ContractApiService>(),
        gh<_i25.ContractDao>(),
      ));
  gh.singleton<_i71.ContractorReturnInteractor>(
      _i71.ContractReturnInteractorImpl(
    gh<_i68.ContractReturnRepository>(),
    gh<_i45.EmployeeRepository>(),
    gh<_i66.ContractRepository>(),
    gh<_i48.OfficeRepository>(),
  ));
  gh.singleton<_i72.DataSyncService>(_i72.DataSyncServiceImpl(
    gh<_i56.RegionSyncService>(),
    gh<_i9.KeyValueStore>(),
    gh<_i49.OfficeSyncService>(),
    gh<_i46.EmployeeSyncService>(),
    gh<_i64.ClientSyncService>(),
    gh<_i70.ContractSyncService>(),
    gh<_i69.ContractReturnSyncService>(),
    gh<_i51.OperationSyncService>(),
    gh<_i54.PaymentSyncService>(),
    gh<_i59.ServiceSyncService>(),
  ));
  gh.singleton<_i73.PaymentInteractor>(_i73.PaymentInteractorImpl(
    gh<_i53.PaymentRepository>(),
    gh<_i45.EmployeeRepository>(),
    gh<_i66.ContractRepository>(),
    gh<_i48.OfficeRepository>(),
    gh<_i38.OperationRepository>(),
    gh<_i17.OperationMapper>(),
  ));
  gh.singleton<_i74.ProfileInteractor>(_i74.ProfileInteractorImpl(
    gh<_i61.AuthRepository>(),
    gh<_i48.OfficeRepository>(),
  ));
  gh.singleton<_i75.ServiceInteractor>(_i75.ServiceInteractorImpl(
    gh<_i58.ServiceRepository>(),
    gh<_i66.ContractRepository>(),
    gh<_i48.OfficeRepository>(),
    gh<_i38.OperationRepository>(),
    gh<_i17.OperationMapper>(),
  ));
  gh.singleton<_i76.SettingsService>(_i76.SettingsServiceImpl(
    gh<_i60.UserRepository>(),
    gh<_i9.KeyValueStore>(),
  ));
  gh.singleton<_i77.AuthInteractor>(
      _i77.AuthInteractorImpl(gh<_i61.AuthRepository>()));
  gh.singleton<_i78.ClientInteractor>(_i78.ClientInteractorImpl(
    gh<_i63.ClientRepository>(),
    gh<_i41.RegionRepository>(),
    gh<_i45.EmployeeRepository>(),
    gh<_i48.OfficeRepository>(),
  ));
  gh.singleton<_i79.ContractInteractor>(_i79.ContractInteractorImpl(
    gh<_i66.ContractRepository>(),
    gh<_i41.RegionRepository>(),
    gh<_i45.EmployeeRepository>(),
    gh<_i63.ClientRepository>(),
    gh<_i48.OfficeRepository>(),
    gh<_i73.PaymentInteractor>(),
    gh<_i18.PaymentMapper>(),
  ));
  gh.factory<_i80.ContractReturnBloc>(() => _i80.ContractReturnBloc(
        gh<_i71.ContractorReturnInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i81.ContractReturnCreateBloc>(() => _i81.ContractReturnCreateBloc(
        gh<_i71.ContractorReturnInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
        gh<_i28.ContractReturnMapper>(),
      ));
  gh.factory<_i82.LoginBloc>(() => _i82.LoginBloc(
        gh<_i77.AuthInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i83.PaymentBloc>(() => _i83.PaymentBloc(
        gh<_i73.PaymentInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i84.PaymentCreateBloc>(() => _i84.PaymentCreateBloc(
        gh<_i73.PaymentInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
        gh<_i18.PaymentMapper>(),
      ));
  gh.factory<_i85.ProfileBloc>(() => _i85.ProfileBloc(
        gh<_i74.ProfileInteractor>(),
        gh<_i9.KeyValueStore>(),
        gh<_i72.DataSyncService>(),
        gh<_i25.ContractDao>(),
      ));
  gh.factory<_i86.ServiceBloc>(() => _i86.ServiceBloc(
        gh<_i15.NotifyErrorSnackbar>(),
        gh<_i75.ServiceInteractor>(),
      ));
  gh.factory<_i87.ServiceCreateBloc>(() => _i87.ServiceCreateBloc(
        gh<_i75.ServiceInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
        gh<_i21.ServiceMapper>(),
      ));
  gh.factory<_i88.ClientBloc>(() => _i88.ClientBloc(
        gh<_i78.ClientInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i89.ClientCreateBloc>(() => _i89.ClientCreateBloc(
        gh<_i78.ClientInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
        gh<_i9.KeyValueStore>(),
      ));
  gh.factory<_i90.ContractBloc>(() => _i90.ContractBloc(
        gh<_i79.ContractInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i91.ContractCreateBloc>(() => _i91.ContractCreateBloc(
        gh<_i79.ContractInteractor>(),
        gh<_i15.NotifyErrorSnackbar>(),
        gh<_i26.ContractMapper>(),
        gh<_i24.ClientMapper>(),
      ));
  return getIt;
}

class _$RouterModule extends _i92.RouterModule {}

class _$DioClientModule extends _i93.DioClientModule {}

class _$InfrastructureModule extends _i94.InfrastructureModule {}

class _$DbModule extends _i95.DbModule {}
