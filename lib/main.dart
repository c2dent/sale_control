import 'package:flutter/foundation.dart';
import 'package:hasap_admin/app/app_environment.dart';
import 'package:hasap_admin/app/runner.dart';

void main() {
  // Получаем параметры окружения переданные при сборке/запуске проекта
  // Здесь можно вводить необходимые конфигурируемые параметры для различных видов сборок приложения
  const logLevelEnv = String.fromEnvironment('logLevel');
  const debugInstrumentsEnv = bool.fromEnvironment('debugInstruments');

  const buildType = !kReleaseMode || debugInstrumentsEnv ? BuildType.debug : BuildType.release;
  final appLogLevel = AppLogLevels.getFromString(logLevelEnv);
  final enableLogs = appLogLevel != AppLogLevel.nothing;

  Runner.run(
    AppEnvironment(
      buildType: buildType,
      debugOptions: const DebugOptions(
        debugShowCheckedModeBanner: buildType == BuildType.debug,
      ),
      debugPaintOptions: const DebugPaintOptions(),
      logLevel: appLogLevel ?? AppLogLevel.verbose,
      enableBlocLogs: enableLogs,
      enableRoutingLogs: enableLogs,
      enableDioLogs: enableLogs,
    ),
  );
}
