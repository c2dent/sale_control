import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/app_environment.dart';
import 'package:hasap_admin/arch/dio_packgages_fork/flutter_transformer.dart';
import 'package:hasap_admin/arch/dio_packgages_fork/pretty_dio_logger.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/http/link_provider.dart';
import 'package:hasap_admin/core/infrastructure/dio_logger_wrapper.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

///Абстракция для создания DIO-клиентов
abstract class DioClientCreator {
  ///Возвращает http-client для подключения к домену работы с time-api
  Future<Dio> makeHasapDioClient();
}

///Базовая реализация [DioClientCreator] базирующаяся на [DriverEnvironment] и [LinkProvider]
@Singleton(as: DioClientCreator)
class DioClientCreatorImpl implements DioClientCreator {
  final KeyValueStore keyValueStore = GetIt.instance.get<KeyValueStore>();
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
    String? accessToken;
    final Dio dio = await _baseDio(linkProvider.finspaceHost);
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      accessToken = await keyValueStore.read(StoreKeys.prefsAccessToken);
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      options.headers['X-Client-Version'] = packageInfo.version;

      if (!options.path.contains('/refreshtoken/') && !options.path.contains('login/') && accessToken != null) {
        options.headers['Authorization'] = 'Token $accessToken';
      }
      return handler.next(options);
    }, onError: (DioException error, handler) async {
      Future<bool> refreshToken() async {
        String? refreshToken = await keyValueStore.read(StoreKeys.prefsRefreshToken);
        final response = await dio.post('/refreshtoken/', data: {'refreshToken': refreshToken});
        if (response.statusCode == 200) {
          await keyValueStore.write(StoreKeys.prefsAccessToken, response.data['accessToken'].toString());
          return true;
        } else {
          accessToken = null; /// todo Можеть быт здесь придется аннулировать userData из prefs
          return false;
        }
      }

      Future<Response<dynamic>> retry(RequestOptions requestOptions) async {
        final options = Options(method: requestOptions.method, headers: requestOptions.headers);
        return dio.request<dynamic>(requestOptions.path, data: requestOptions.data, queryParameters: requestOptions.queryParameters, options: options);
      }

      if (error.response?.statusCode == 401) {
        String? token = await keyValueStore.read(StoreKeys.prefsRefreshToken);
        if (token != null) {
          if (await refreshToken()) {
            return handler.resolve(await retry(error.requestOptions));
          } else {
            return handler.reject(error);
          }
        }
      } else {
        handler.reject(error);
      }
    }));

    return dio;
  }

  /// Метод подставляющий базовую настроенную версию Dio
  Future<Dio> _baseDio(final String url) async {
    final startDio = Dio();

    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = const Duration(milliseconds: defaultConnectTimeout);
    startDio.options.receiveTimeout = const Duration(milliseconds: defaultReceiveTimeout);

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
