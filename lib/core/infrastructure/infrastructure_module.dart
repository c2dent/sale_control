import 'package:connectivity/connectivity.dart';
import 'package:hasap_admin/app/app_environment.dart';
import 'package:hasap_admin/core/infrastructure/dio_logger_wrapper.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Модуль для поставки реализации инфраструктурных элементов (Logger) в приложение
@module
abstract class InfrastructureModule {
  @singleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  DioLoggerWrapper dioLoggerWrapper(AppEnvironment appEnvironment) {
    return DioLoggerWrapper(
      Logger(
        printer: SimplePrinter(),
        filter: ProductionFilter(),
        level: appEnvironment.logLevel.loggerLevel,
        output: MultiOutput(
          [
            ConsoleOutput(),
          ],
        ),
      ),
    );
  }

  @lazySingleton
  Logger logger(AppEnvironment appEnvironment) {
    return Logger(
      printer: PrettyPrinter(
        methodCount: 0,
      ),
      filter: ProductionFilter(),
      level: appEnvironment.logLevel.loggerLevel,
      output: MultiOutput(
        [
          ConsoleOutput(),
        ],
      ),
    );
  }
}