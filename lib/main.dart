import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hasap_admin/app/app_environment.dart';
import 'package:hasap_admin/app/runner.dart';
import 'package:hasap_admin/core/data_sync_services/app_lifecycle_observer.dart';

void main() async {
  // Получаем параметры окружения переданные при сборке/запуске проекта
  // Здесь можно вводить необходимые конфигурируемые параметры для различных видов сборок приложения
  WidgetsFlutterBinding.ensureInitialized();
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

  await Future.delayed(const Duration(seconds: 5));
  final observer = AppLifecycleObserver();
  WidgetsBinding.instance.addObserver(observer);
}
