// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity/connectivity.dart' as _i6;
import 'package:dio/dio.dart' as _i52;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;

import '../arch/dio_error_handler/dio_error_handler.dart' as _i31;
import '../arch/dio_error_handler/models/dio_error_models.dart' as _i32;
import '../arch/drift_error_handler/drift_error_handler.dart' as _i33;
import '../arch/drift_error_handler/models/drift_error_models.dart' as _i34;
import '../arch/key_value_store_migrator/key_value_store.dart' as _i10;
import '../arch/key_value_store_migrator/key_value_store_migrator.dart' as _i36;
import '../core/data_sync_services/admission_sync_service.dart' as _i74;
import '../core/data_sync_services/client_sync_service.dart' as _i78;
import '../core/data_sync_services/contract_return_sync_service.dart' as _i83;
import '../core/data_sync_services/contract_sync_service.dart' as _i84;
import '../core/data_sync_services/data_sync_service.dart' as _i86;
import '../core/data_sync_services/employee_sync_service.dart' as _i55;
import '../core/data_sync_services/office_sync_service.dart' as _i57;
import '../core/data_sync_services/operation_sync_service.dart' as _i59;
import '../core/data_sync_services/payment_sync_service.dart' as _i62;
import '../core/data_sync_services/product_operation_sync_service.dart' as _i65;
import '../core/data_sync_services/product_sync_service.dart' as _i66;
import '../core/data_sync_services/region_sync_service.dart' as _i68;
import '../core/data_sync_services/service_sync_service.dart' as _i71;
import '../core/http/dio_client_creator.dart' as _i30;
import '../core/http/dio_client_module.dart' as _i111;
import '../core/http/link_provider.dart' as _i12;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i7;
import '../core/infrastructure/infrastructure_module.dart' as _i109;
import '../core/infrastructure/logger_bloc_observer.dart' as _i14;
import '../core/infrastructure/notify_error_snackbar.dart' as _i16;
import '../core/mappers/admission_mapper.dart' as _i3;
import '../core/mappers/client_mapper.dart' as _i25;
import '../core/mappers/contract_mapper.dart' as _i27;
import '../core/mappers/contract_return_mapper.dart' as _i29;
import '../core/mappers/employee_mapper.dart' as _i9;
import '../core/mappers/office_mapper.dart' as _i17;
import '../core/mappers/operation_mapper.dart' as _i40;
import '../core/mappers/payment_mapper.dart' as _i43;
import '../core/mappers/product_mapper.dart' as _i18;
import '../core/mappers/product_operation_mapper.dart' as _i19;
import '../core/mappers/region_mapper.dart' as _i20;
import '../core/mappers/service_mapper.dart' as _i50;
import '../core/repositories/employee_repository.dart' as _i54;
import '../core/repositories/office_repository.dart' as _i38;
import '../core/repositories/operation_repository.dart' as _i41;
import '../core/repositories/region_repository.dart' as _i48;
import '../core/services/admission_api_service.dart' as _i73;
import '../core/services/employee_api_service.dart' as _i53;
import '../core/services/office_api_service.dart' as _i56;
import '../core/services/operation_api_servie.dart' as _i58;
import '../core/services/product_api_service.dart' as _i63;
import '../core/services/product_operation_api_service.dart' as _i64;
import '../core/services/region_api_service.dart' as _i67;
import '../core/services/settings_service.dart' as _i22;
import '../core/services/user_api_service.dart' as _i72;
import '../core/storage/datebase/app_database.dart' as _i23;
import '../core/storage/datebase/daos/admission_dao.dart' as _i51;
import '../core/storage/datebase/daos/client_dao.dart' as _i24;
import '../core/storage/datebase/daos/contract_dao.dart' as _i26;
import '../core/storage/datebase/daos/contract_return_dao.dart' as _i28;
import '../core/storage/datebase/daos/employee_dao.dart' as _i35;
import '../core/storage/datebase/daos/office_dao.dart' as _i37;
import '../core/storage/datebase/daos/operation_dao.dart' as _i39;
import '../core/storage/datebase/daos/payment_dao.dart' as _i42;
import '../core/storage/datebase/daos/product_dao.dart' as _i44;
import '../core/storage/datebase/daos/product_operation_dao.dart' as _i45;
import '../core/storage/datebase/daos/region_dao.dart' as _i47;
import '../core/storage/datebase/daos/service_dao.dart' as _i49;
import '../core/storage/datebase/db_module.dart' as _i110;
import '../core/storage/migration_observer_logger.dart' as _i15;
import '../core/storage/sharedPrefs/prefs_key_value_store.dart' as _i11;
import '../feature/auth/data/auth_repository.dart' as _i75;
import '../feature/auth/domain/auth_interactor.dart' as _i91;
import '../feature/auth/presentation/bloc/login_bloc.dart' as _i96;
import '../feature/client/data/client_repository.dart' as _i77;
import '../feature/client/data/services/client_api_service.dart' as _i76;
import '../feature/client/domain/client_interactor.dart' as _i92;
import '../feature/client/presentation/create/bloc/client_create_bloc.dart'
    as _i104;
import '../feature/client/presentation/list/bloc/client_bloc.dart' as _i103;
import '../feature/contract/data/contract_repository.dart' as _i80;
import '../feature/contract/data/services/contract_api_service.dart' as _i79;
import '../feature/contract/domain/contract_interactor.dart' as _i93;
import '../feature/contract/presentation/create/bloc/contract_create_bloc.dart'
    as _i106;
import '../feature/contract/presentation/detail/bloc/contract_detail_bloc.dart'
    as _i107;
import '../feature/contract/presentation/list/bloc/contract_bloc.dart' as _i105;
import '../feature/contract_return/data/contract_return_repository.dart'
    as _i82;
import '../feature/contract_return/data/services/contract_return_api_services.dart'
    as _i81;
import '../feature/contract_return/domain/contract_return_interactor.dart'
    as _i85;
import '../feature/contract_return/presentation/create/bloc/contract_return_bloc.dart'
    as _i95;
import '../feature/contract_return/presentation/list/bloc/contract_return_bloc.dart'
    as _i94;
import '../feature/payment/data/payment_repository.dart' as _i61;
import '../feature/payment/data/services/payment_api_service.dart' as _i60;
import '../feature/payment/domain/payment_interactor.dart' as _i87;
import '../feature/payment/presentation/create/bloc/payment_create_bloc.dart'
    as _i98;
import '../feature/payment/presentation/detail/bloc/payment_detail_bloc.dart'
    as _i99;
import '../feature/payment/presentation/list/bloc/payment_bloc.dart' as _i97;
import '../feature/profile/data/profile_repository.dart' as _i89;
import '../feature/profile/domain/profile_interactor.dart' as _i46;
import '../feature/profile/presentation/bloc/profile_bloc.dart' as _i88;
import '../feature/service/data/services/service_api_service.dart' as _i69;
import '../feature/service/data/services_repository.dart' as _i70;
import '../feature/service/domain/service_interactor.dart' as _i90;
import '../feature/service/presentation/create/bloc/service_create_bloc.dart'
    as _i101;
import '../feature/service/presentation/detail/bloc/service_detail_bloc.dart'
    as _i102;
import '../feature/service/presentation/list/bloc/service_bloc.dart' as _i100;
import 'app_environment.dart' as _i8;
import 'router/app_router.dart' as _i4;
import 'router/router_logging_observer.dart' as _i21;
import 'router/router_module.dart' as _i108;
import 'theme/bloc/app_theme_bloc.dart' as _i5;

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
  gh.factory<_i3.AdmissionMapper>(() => _i3.AdmissionMapper());
  gh.singleton<_i4.AppRouter>(routerModule.appRouter());
  gh.singleton<_i5.AppThemeBloc>(_i5.AppThemeBloc());
  gh.singleton<_i6.Connectivity>(infrastructureModule.connectivity);
  gh.lazySingleton<_i7.DioLoggerWrapper>(
      () => infrastructureModule.dioLoggerWrapper(gh<_i8.AppEnvironment>()));
  gh.factory<_i9.EmployeeMapper>(() => _i9.EmployeeMapper());
  gh.singleton<_i10.KeyValueStore>(_i11.SharedPrefsKeyValueStore());
  gh.singleton<_i12.LinkProvider>(_i12.LinkProvider());
  gh.lazySingleton<_i13.Logger>(
      () => infrastructureModule.logger(gh<_i8.AppEnvironment>()));
  gh.singleton<_i14.LoggerBlocObserver>(
      _i14.LoggerBlocObserver(gh<_i13.Logger>()));
  gh.singleton<_i15.MigrationObserverLogger>(
      _i15.MigrationObserverLogger(gh<_i13.Logger>()));
  gh.singleton<_i16.NotifyErrorSnackbar>(_i16.NotifyErrorSnackbar());
  gh.factory<_i17.OfficeMapper>(() => _i17.OfficeMapper());
  gh.factory<_i18.ProductMapper>(() => _i18.ProductMapper());
  gh.factory<_i19.ProductOperationMapper>(() => _i19.ProductOperationMapper());
  gh.factory<_i20.RegionSyncMapper>(() => _i20.RegionSyncMapper());
  gh.factory<_i21.RouterLoggingObserver>(
      () => routerModule.routerLoggingObserver(
            gh<_i13.Logger>(),
            gh<_i4.AppRouter>(),
          ));
  gh.singleton<_i22.SettingsService>(
      _i22.SettingsServiceImpl(gh<_i10.KeyValueStore>()));
  gh.singleton<_i23.AppDatabase>(dbModule.appDatabase(
    observer: gh<_i15.MigrationObserverLogger>(),
    keyValueStore: gh<_i10.KeyValueStore>(),
  ));
  gh.factory<_i24.ClientDao>(() => _i24.ClientDao(gh<_i23.AppDatabase>()));
  gh.factory<_i25.ClientMapper>(
      () => _i25.ClientMapper(gh<_i22.SettingsService>()));
  gh.factory<_i26.ContractDao>(() => _i26.ContractDao(gh<_i23.AppDatabase>()));
  gh.factory<_i27.ContractMapper>(
      () => _i27.ContractMapper(gh<_i22.SettingsService>()));
  gh.factory<_i28.ContractReturnDao>(
      () => _i28.ContractReturnDao(gh<_i23.AppDatabase>()));
  gh.factory<_i29.ContractReturnMapper>(
      () => _i29.ContractReturnMapper(gh<_i22.SettingsService>()));
  gh.singleton<_i30.DioClientCreator>(_i30.DioClientCreatorImpl(
    linkProvider: gh<_i12.LinkProvider>(),
    logger: gh<_i7.DioLoggerWrapper>(),
    appEnvironment: gh<_i8.AppEnvironment>(),
  ));
  gh.lazySingleton<_i31.DioErrorHandler<_i32.DefaultApiError>>(
      () => dioClientModule.makeDioErrorHandler(gh<_i13.Logger>()));
  gh.singleton<_i33.DriftErrorHandler<_i34.DefaultDriftError>>(
      dbModule.makeDriftErrorHandler(gh<_i13.Logger>()));
  gh.factory<_i35.EmployeeDao>(() => _i35.EmployeeDao(gh<_i23.AppDatabase>()));
  gh.singleton<_i36.KeyValueStoreMigrator>(_i11.KeyValueStoreMigratorImpl(
    keyValueStore: gh<_i10.KeyValueStore>(),
    observer: gh<_i15.MigrationObserverLogger>(),
  ));
  gh.factory<_i37.OfficeDao>(() => _i37.OfficeDao(gh<_i23.AppDatabase>()));
  gh.singleton<_i38.OfficeRepository>(
      _i38.OfficeRepositoryImpl(gh<_i37.OfficeDao>()));
  gh.factory<_i39.OperationDao>(
      () => _i39.OperationDao(gh<_i23.AppDatabase>()));
  gh.factory<_i40.OperationMapper>(
      () => _i40.OperationMapper(gh<_i22.SettingsService>()));
  gh.singleton<_i41.OperationRepository>(
      _i41.OperationRepositoryImpl(gh<_i39.OperationDao>()));
  gh.factory<_i42.PaymentDao>(() => _i42.PaymentDao(gh<_i23.AppDatabase>()));
  gh.factory<_i43.PaymentMapper>(
      () => _i43.PaymentMapper(gh<_i22.SettingsService>()));
  gh.factory<_i44.ProductDao>(() => _i44.ProductDao(gh<_i23.AppDatabase>()));
  gh.factory<_i45.ProductOperationDao>(
      () => _i45.ProductOperationDao(gh<_i23.AppDatabase>()));
  gh.singleton<_i46.ProfileInteractor>(
      _i46.ProfileInteractorImpl(gh<_i38.OfficeRepository>()));
  gh.factory<_i47.RegionDao>(() => _i47.RegionDao(gh<_i23.AppDatabase>()));
  gh.singleton<_i48.RegionRepository>(
      _i48.RegionRepositoryImpl(gh<_i47.RegionDao>()));
  gh.factory<_i49.ServiceDao>(() => _i49.ServiceDao(gh<_i23.AppDatabase>()));
  gh.factory<_i50.ServiceMapper>(
      () => _i50.ServiceMapper(gh<_i22.SettingsService>()));
  gh.factory<_i51.AdmissionDao>(
      () => _i51.AdmissionDao(gh<_i23.AppDatabase>()));
  await gh.singletonAsync<_i52.Dio>(
    () => dioClientModule.makeDioClient(gh<_i30.DioClientCreator>()),
    instanceName: 'hasapHttpClient',
    preResolve: true,
  );
  gh.singleton<_i53.EmployeeApiService>(_i53.EmployeeApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.singleton<_i54.EmployeeRepository>(_i54.EmployeeRepositoryImpl(
    gh<_i53.EmployeeApiService>(),
    gh<_i35.EmployeeDao>(),
  ));
  gh.factory<_i55.EmployeeSyncService>(() => _i55.EmployeeSyncService(
        gh<_i53.EmployeeApiService>(),
        gh<_i35.EmployeeDao>(),
      ));
  gh.singleton<_i56.OfficeApiService>(_i56.OfficeApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.factory<_i57.OfficeSyncService>(() => _i57.OfficeSyncService(
        gh<_i56.OfficeApiService>(),
        gh<_i37.OfficeDao>(),
      ));
  gh.singleton<_i58.OperationApiService>(_i58.OperationApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.factory<_i59.OperationSyncService>(() => _i59.OperationSyncService(
        gh<_i58.OperationApiService>(),
        gh<_i39.OperationDao>(),
        gh<_i40.OperationMapper>(),
      ));
  gh.singleton<_i60.PaymentApiService>(_i60.PaymentApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.singleton<_i61.PaymentRepository>(_i61.PaymentRepositoryImpl(
    gh<_i60.PaymentApiService>(),
    gh<_i42.PaymentDao>(),
  ));
  gh.factory<_i62.PaymentSyncService>(() => _i62.PaymentSyncService(
        gh<_i60.PaymentApiService>(),
        gh<_i42.PaymentDao>(),
        gh<_i43.PaymentMapper>(),
      ));
  gh.singleton<_i63.ProductApiService>(_i63.ProductApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.singleton<_i64.ProductOperationApiService>(
      _i64.ProductOperationApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.factory<_i65.ProductOperationSyncService>(
      () => _i65.ProductOperationSyncService(
            gh<_i64.ProductOperationApiService>(),
            gh<_i19.ProductOperationMapper>(),
            gh<_i45.ProductOperationDao>(),
          ));
  gh.factory<_i66.ProductSyncService>(() => _i66.ProductSyncService(
        gh<_i63.ProductApiService>(),
        gh<_i44.ProductDao>(),
        gh<_i18.ProductMapper>(),
      ));
  gh.singleton<_i67.RegionApiService>(_i67.RegionApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.factory<_i68.RegionSyncService>(() => _i68.RegionSyncService(
        gh<_i67.RegionApiService>(),
        gh<_i47.RegionDao>(),
      ));
  gh.singleton<_i69.ServiceApiService>(_i69.ServiceApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.singleton<_i70.ServiceRepository>(_i70.ServiceRepositoryImpl(
    gh<_i69.ServiceApiService>(),
    gh<_i49.ServiceDao>(),
  ));
  gh.factory<_i71.ServiceSyncService>(() => _i71.ServiceSyncService(
        gh<_i69.ServiceApiService>(),
        gh<_i49.ServiceDao>(),
      ));
  gh.singleton<_i72.UserApiService>(_i72.UserApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
    gh<_i10.KeyValueStore>(),
    gh<_i37.OfficeDao>(),
  ));
  gh.singleton<_i73.AdmissionApiService>(_i73.AdmissionApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.factory<_i74.AdmissionSyncService>(() => _i74.AdmissionSyncService(
        gh<_i73.AdmissionApiService>(),
        gh<_i3.AdmissionMapper>(),
        gh<_i51.AdmissionDao>(),
      ));
  gh.singleton<_i75.AuthRepository>(
      _i75.AuthRepositoryImpl(gh<_i72.UserApiService>()));
  gh.singleton<_i76.ClientApiService>(_i76.ClientApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.singleton<_i77.ClientRepository>(_i77.ClientRepositoryImpl(
    gh<_i76.ClientApiService>(),
    gh<_i24.ClientDao>(),
  ));
  gh.factory<_i78.ClientSyncService>(() => _i78.ClientSyncService(
        gh<_i76.ClientApiService>(),
        gh<_i24.ClientDao>(),
      ));
  gh.singleton<_i79.ContractApiService>(_i79.ContractApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.singleton<_i80.ContractRepository>(_i80.ContractRepositoryImpl(
    gh<_i79.ContractApiService>(),
    gh<_i26.ContractDao>(),
  ));
  gh.singleton<_i81.ContractReturnApiService>(_i81.ContractReturnApiServiceImpl(
    gh<_i52.Dio>(instanceName: 'hasapHttpClient'),
    gh<_i31.DioErrorHandler<_i32.DefaultApiError>>(),
  ));
  gh.singleton<_i82.ContractReturnRepository>(_i82.ContractReturnRepositoryImpl(
    gh<_i81.ContractReturnApiService>(),
    gh<_i28.ContractReturnDao>(),
  ));
  gh.factory<_i83.ContractReturnSyncService>(
      () => _i83.ContractReturnSyncService(
            gh<_i81.ContractReturnApiService>(),
            gh<_i28.ContractReturnDao>(),
          ));
  gh.factory<_i84.ContractSyncService>(() => _i84.ContractSyncService(
        gh<_i79.ContractApiService>(),
        gh<_i26.ContractDao>(),
      ));
  gh.singleton<_i85.ContractorReturnInteractor>(
      _i85.ContractReturnInteractorImpl(
    gh<_i82.ContractReturnRepository>(),
    gh<_i54.EmployeeRepository>(),
    gh<_i80.ContractRepository>(),
    gh<_i38.OfficeRepository>(),
  ));
  gh.singleton<_i86.DataSyncService>(_i86.DataSyncServiceImpl(
    gh<_i68.RegionSyncService>(),
    gh<_i10.KeyValueStore>(),
    gh<_i57.OfficeSyncService>(),
    gh<_i55.EmployeeSyncService>(),
    gh<_i78.ClientSyncService>(),
    gh<_i84.ContractSyncService>(),
    gh<_i83.ContractReturnSyncService>(),
    gh<_i59.OperationSyncService>(),
    gh<_i62.PaymentSyncService>(),
    gh<_i71.ServiceSyncService>(),
    gh<_i66.ProductSyncService>(),
    gh<_i65.ProductOperationSyncService>(),
    gh<_i74.AdmissionSyncService>(),
  ));
  gh.singleton<_i87.PaymentInteractor>(_i87.PaymentInteractorImpl(
    gh<_i61.PaymentRepository>(),
    gh<_i54.EmployeeRepository>(),
    gh<_i80.ContractRepository>(),
    gh<_i38.OfficeRepository>(),
    gh<_i41.OperationRepository>(),
    gh<_i40.OperationMapper>(),
  ));
  gh.factory<_i88.ProfileBloc>(() => _i88.ProfileBloc(
        gh<_i46.ProfileInteractor>(),
        gh<_i10.KeyValueStore>(),
        gh<_i86.DataSyncService>(),
        gh<_i26.ContractDao>(),
        gh<_i72.UserApiService>(),
      ));
  gh.singleton<_i89.ProfileRepository>(
      _i89.ProfileRepositoryImpl(gh<_i72.UserApiService>()));
  gh.singleton<_i90.ServiceInteractor>(_i90.ServiceInteractorImpl(
    gh<_i70.ServiceRepository>(),
    gh<_i80.ContractRepository>(),
    gh<_i38.OfficeRepository>(),
    gh<_i41.OperationRepository>(),
    gh<_i40.OperationMapper>(),
  ));
  gh.singleton<_i91.AuthInteractor>(
      _i91.AuthInteractorImpl(gh<_i75.AuthRepository>()));
  gh.singleton<_i92.ClientInteractor>(_i92.ClientInteractorImpl(
    gh<_i77.ClientRepository>(),
    gh<_i48.RegionRepository>(),
    gh<_i54.EmployeeRepository>(),
    gh<_i38.OfficeRepository>(),
  ));
  gh.singleton<_i93.ContractInteractor>(_i93.ContractInteractorImpl(
    gh<_i80.ContractRepository>(),
    gh<_i48.RegionRepository>(),
    gh<_i54.EmployeeRepository>(),
    gh<_i77.ClientRepository>(),
    gh<_i38.OfficeRepository>(),
    gh<_i87.PaymentInteractor>(),
    gh<_i43.PaymentMapper>(),
  ));
  gh.factory<_i94.ContractReturnBloc>(() => _i94.ContractReturnBloc(
        gh<_i85.ContractorReturnInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i95.ContractReturnCreateBloc>(() => _i95.ContractReturnCreateBloc(
        gh<_i85.ContractorReturnInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
        gh<_i29.ContractReturnMapper>(),
      ));
  gh.factory<_i96.LoginBloc>(() => _i96.LoginBloc(
        gh<_i91.AuthInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i97.PaymentBloc>(() => _i97.PaymentBloc(
        gh<_i87.PaymentInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i98.PaymentCreateBloc>(() => _i98.PaymentCreateBloc(
        gh<_i87.PaymentInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
        gh<_i43.PaymentMapper>(),
      ));
  gh.factory<_i99.PaymentDetailBloc>(
      () => _i99.PaymentDetailBloc(gh<_i87.PaymentInteractor>()));
  gh.factory<_i100.ServiceBloc>(() => _i100.ServiceBloc(
        gh<_i16.NotifyErrorSnackbar>(),
        gh<_i90.ServiceInteractor>(),
      ));
  gh.factory<_i101.ServiceCreateBloc>(() => _i101.ServiceCreateBloc(
        gh<_i90.ServiceInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
        gh<_i50.ServiceMapper>(),
      ));
  gh.factory<_i102.ServiceDetailBloc>(
      () => _i102.ServiceDetailBloc(gh<_i90.ServiceInteractor>()));
  gh.factory<_i103.ClientBloc>(() => _i103.ClientBloc(
        gh<_i92.ClientInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
      ));
  gh.factory<_i104.ClientCreateBloc>(() => _i104.ClientCreateBloc(
        gh<_i92.ClientInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
        gh<_i10.KeyValueStore>(),
      ));
  gh.factory<_i105.ContractBloc>(() => _i105.ContractBloc(
        gh<_i93.ContractInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
        gh<_i10.KeyValueStore>(),
      ));
  gh.factory<_i106.ContractCreateBloc>(() => _i106.ContractCreateBloc(
        gh<_i93.ContractInteractor>(),
        gh<_i16.NotifyErrorSnackbar>(),
        gh<_i27.ContractMapper>(),
        gh<_i25.ClientMapper>(),
      ));
  gh.factory<_i107.ContractDetailBloc>(
      () => _i107.ContractDetailBloc(gh<_i93.ContractInteractor>()));
  return getIt;
}

class _$RouterModule extends _i108.RouterModule {}

class _$InfrastructureModule extends _i109.InfrastructureModule {}

class _$DbModule extends _i110.DbModule {}

class _$DioClientModule extends _i111.DioClientModule {}
