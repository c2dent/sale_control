import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasap_admin/app/theme/models/app_color_theme.dart';
import 'package:hasap_admin/app/theme/models/app_text_theme.dart';
import 'package:injectable/injectable.dart';

import 'app_theme.dart';

/// Логический компонент, отвечающий за переключение тем в приложении
///
/// Является singleton в связи с тем, что переключение темы происходит через отправку событий в текущий инстанс,
/// после чего реактивно актаульная тема будет доставлена во все компоненты приложения
@singleton
class AppThemeBloc extends Bloc<AppThemeEvent, AppTheme> {
  AppThemeBloc()
      : super(AppTheme(
    colorTheme: const LightColorTheme(),
    textTheme: BaseTextTheme(),
  )) {
    on<AppThemeEventSetDarkTheme>(_setDarkTheme);
    on<AppThemeEventSetLightTheme>(_setLightTheme);
  }

  FutureOr<void> _setDarkTheme(AppThemeEventSetDarkTheme event, Emitter<AppTheme> emit) {
    emit(state.copyWith(colorTheme: const DarkRedColorTheme()));
  }

  FutureOr<void> _setLightTheme(AppThemeEventSetLightTheme event, Emitter<AppTheme> emit) {
    emit(state.copyWith(colorTheme: const LightColorTheme()));
  }
}