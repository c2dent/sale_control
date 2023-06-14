import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/http/dio_client_creator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Модуль поставляющий зависимости, связанные с [Dio]
@module
abstract class DioClientModule {
  @Named(InjectableNames.hasapHttpClient)
  @preResolve
  @singleton
  Future<Dio> makeDioClient(DioClientCreator dioClientCreator) => dioClientCreator.makeHasapDioClient();

  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioErrorHandler(Logger logger) => DioErrorHandlerImpl<DefaultApiError>(
    connectivity: Connectivity(),
    logger: logger,
    parseJsonApiError: (json) async {
      //метод, парсящий ошибку от сервера
      if (json == null) return null;
      if (json['detail'] != null) return DefaultApiError(name: json['detail'], code: '403');
      return null;
    },
  );
}