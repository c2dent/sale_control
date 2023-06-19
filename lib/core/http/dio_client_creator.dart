import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hasap_admin/app/app_environment.dart';
import 'package:hasap_admin/arch/dio_packgages_fork/flutter_transformer.dart';
import 'package:hasap_admin/arch/dio_packgages_fork/pretty_dio_logger.dart';
import 'package:hasap_admin/core/http/link_provider.dart';
import 'package:hasap_admin/core/infrastructure/dio_logger_wrapper.dart';
import 'package:injectable/injectable.dart';

///Абстракция для создания DIO-клиентов
abstract class DioClientCreator {
  ///Возвращает http-client для подключения к домену работы с time-api
  Future<Dio> makeHasapDioClient();
}

///Базовая реализация [DioClientCreator] базирующаяся на [DriverEnvironment] и [LinkProvider]
@Singleton(as: DioClientCreator)
class DioClientCreatorImpl implements DioClientCreator {
  static const defaultConnectTimeout = 5000;
  static const defaultReceiveTimeout = 25000;

  @protected
  final LinkProvider linkProvider;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final DioLoggerWrapper logger;

  DioClientCreatorImpl({
    required this.linkProvider,
    required this.logger,
    required this.appEnvironment,
  });

  @override
  Future<Dio> makeHasapDioClient() async {
    const storage = FlutterSecureStorage();
    String? accessToken;
    final Dio dio = await _baseDio(linkProvider.finspaceHost);
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        if (options.method == "GET" || options.method == "DELETE") {
          final cabinetId = await storage.read(key: 'cabinetId');
          if (cabinetId != null) {
            options.queryParameters.addAll({"cabinet_id": cabinetId});
          }
        }

        if (await storage.containsKey(key: 'accessToken')) {
          accessToken = await storage.read(key: 'accessToken');
        }

        if (!options.path.contains('/refreshtoken/') && !options.path.contains('auth/login/') && accessToken != null) {
          options.headers['Authorization'] = 'Token $accessToken';
        }
        return handler.next(options);
      },
      onError: (DioError error, handler) async {
        Future<bool> refreshToken() async {
          final refreshToken = await storage.read(key: 'refreshToken');
          final response = await dio.post('/refreshtoken/', data: {'refreshToken': refreshToken});
          if (response.statusCode == 200) {
            await storage.write(key: 'accessToken', value: response.data['accessToken']);
            return true;
          } else {
            accessToken = null;
            storage.deleteAll();
            return false;
          }
        }

        Future<Response<dynamic>> retry(RequestOptions requestOptions) async {
          final options = Options(method: requestOptions.method, headers: requestOptions.headers);
          return dio.request<dynamic>(requestOptions.path,
              data: requestOptions.data,
              queryParameters: requestOptions.queryParameters,
              options: options);
        }

        if (error.response?.statusCode == 401) {
          if (await storage.containsKey(key: 'refreshToken')) {
            if (await refreshToken()) {
              return handler.resolve(await retry(error.requestOptions));
            } else {
              return handler.reject(error);
            }
          }
        } else {
          handler.reject(error);
        }
      }
    ));


    return dio;
  }

  /// Метод подставляющий базовую настроенную версию Dio
  Future<Dio> _baseDio(final String url) async {
    final startDio = Dio();

    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = const Duration(milliseconds: defaultConnectTimeout);
    startDio.options.receiveTimeout =  const Duration(milliseconds: defaultReceiveTimeout);

    if (appEnvironment.enableDioLogs) {
      startDio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          logPrint: logger.logPrint,
        ),
      );
    }

    startDio.transformer = FlutterTransformer();
    return startDio;
  }
}