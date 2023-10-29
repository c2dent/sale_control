import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/app_environment.dart';
import 'package:hasap_admin/app/router/app_router.dart';
import 'package:hasap_admin/app/router/router_logging_observer.dart';
import 'package:hasap_admin/app/theme/app_theme_provider_widget.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme_bloc.dart';

/// Виджет, представляющий корневой элемент приложения
class TemplateApp extends StatefulWidget {
  final AppEnvironment appEnvironment;

  const TemplateApp({
    required this.appEnvironment,
    Key? key,
  }) : super(key: key);

  @override
  State<TemplateApp> createState() => _TemplateAppState();
}

class _TemplateAppState extends State<TemplateApp> {
  @override
  Widget build(BuildContext context) {
    return _ThemebleWidget(
        themebleBuilder: (themeState) => _ThemedApp(
          environment: widget.appEnvironment,
          appTheme: themeState,
        ),
    );
  }
}

/// Виджет добавляющий в дерево виджет-структуру, позволяющую динамически изменять тему приложения,
/// поддерживать разные локализации и форматирование приложения.
/// Изменения темы можно применять через события в [AppThemeBloc],
/// При обновлении создаться новый state, который обновит дерево виджетов и [AppTheme]
class _ThemebleWidget extends StatelessWidget {
  final Widget Function(AppTheme theme) themebleBuilder;

  const _ThemebleWidget({
    required this.themebleBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeBloc>(
      create: (ctx) => GetIt.I.get(),
      child: BlocBuilder<AppThemeBloc, AppTheme>(
        builder: (context, themeState) => AppThemeProvider(
          theme: themeState,
          child: themebleBuilder(themeState),
        ),
      ),
    );
  }
}

/// Виджет вклчюающий в дерево [MaterialApp] с корректными настройками в зависимости от темы [appTheme]
/// Локализации [EasyLocalization] и окружения [environment]
class _ThemedApp extends StatelessWidget {
  final AppEnvironment environment;

  final AppTheme appTheme;

  const _ThemedApp({
    required this.environment,
    required this.appTheme,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I.get<AppRouter>();

    return MaterialApp.router(
      //В данном примере перечислены лишь некоторые из возможных настроек, подробнее про настройки смотри в ThemeData
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: appTheme.colorTheme.primary,
          onPrimary: appTheme.colorTheme.onPrimary,

          secondary: appTheme.colorTheme.secondary,
          onSecondary: appTheme.colorTheme.onSecondary,

          surface: appTheme.colorTheme.surface,
          onSurface: appTheme.colorTheme.onSurface,

          background: appTheme.colorTheme.background,
          secondaryContainer: appTheme.colorTheme.secondaryBackground,
          onBackground: appTheme.colorTheme.onBackground,

          error: appTheme.colorTheme.error,
          onError: appTheme.colorTheme.onError,
          brightness: appTheme.colorTheme.brightness,
        ),
        textTheme: TextTheme(
          bodyLarge: appTheme.textTheme.normal20,
          displayLarge: appTheme.textTheme.h5Bold,
          displayMedium: appTheme.textTheme.bold20,
          labelLarge: appTheme.textTheme.normal18,
          bodySmall: appTheme.textTheme.normal16,
          titleMedium: appTheme.textTheme.bold16,
          titleSmall: appTheme.textTheme.bold14,
        ),
        shadowColor: appTheme.colorTheme.onBackground,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: appTheme.colorTheme.surface,
          elevation: 8,
          modalElevation: 16,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: appTheme.colorTheme.surface,
        ),
      ),
      showPerformanceOverlay: environment.debugOptions.showPerformanceOverlay,
      debugShowMaterialGrid: environment.debugOptions.debugShowMaterialGrid,
      checkerboardRasterCacheImages: environment.debugOptions.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: environment.debugOptions.checkerboardOffscreenLayers,
      showSemanticsDebugger: environment.debugOptions.showSemanticsDebugger,
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(
        appRouter,
        navigatorObservers: () => [
          GetIt.I.get<RouterLoggingObserver>(),
        ],
      ),
    );
  }
}