///Метод инициализации GetIt
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/runner.config.dart';
import 'package:hasap_admin/app/template_app.dart';
import 'package:hasap_admin/core/infrastructure/logger_bloc_observer.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import '../arch/tagetPlatformOverride/dekstop/web.dart';
import 'app_environment.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [
    AppEnvironment, //регистрирую базовые настройки конфигурации приложения
  ],
)

/// В Runner мы иницируем Flutter движок
class Runner{
  static Future<void> run(AppEnvironment appEnvironment) async {
    Intl.defaultLocale = "ru_Ru";
    initializeDateFormatting();

    await initializeFlutterPluginsAndDependencies(appEnvironment: appEnvironment);
    runZonedGuarded(
          () => runApp(TemplateApp(appEnvironment: appEnvironment)),
          (err, stack) async {
        GetIt.I.get<Logger>().e('Critical Error:', error: err, stackTrace: stack);
      },
    );

    Bloc.observer = (appEnvironment.enableBlocLogs ? GetIt.I.get<LoggerBlocObserver>() : null) as BlocObserver;
  }

  static Future<void> initializeFlutterPluginsAndDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    //================================= Инициализация Flutter =================================
    setTargetPlatformForDesktop(); //Смешивание платформ для десктопа и мобилки

    //================================= DI =================================
    await configureDependencies(appEnvironment: appEnvironment);

    //================================= Инициализация плагинов =================================
  }

  static Future<void> configureDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);

    await $initGetIt(
      GetIt.instance,
      environment: appEnvironment.buildType.getItEnvironmentKey,
    );
  }
}