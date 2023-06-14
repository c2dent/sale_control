import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasap_admin/app/theme/app_theme_provider_widget.dart';
import 'package:hasap_admin/app/theme/models/app_color_theme.dart';
import 'package:hasap_admin/app/theme/models/app_text_theme.dart';

part 'app_theme.freezed.dart';

/// Состояние отображающее текущее состояние темы в приложении
@freezed
class AppTheme with _$AppTheme {
  /// [colorTheme] - цветовая тема в приложении
  /// [textTheme] - типографическая тема в приложении
  const factory AppTheme({
    required AppColorTheme colorTheme,
    required AppTextTheme textTheme,
  }) = _AppTheme;

  static AppTheme of(BuildContext context) => AppThemeProvider.of(context).theme;
}

@freezed
class AppThemeEvent with _$AppThemeEvent {
  const factory AppThemeEvent.setDarkTheme() = AppThemeEventSetDarkTheme;
  const factory AppThemeEvent.setLightTheme() = AppThemeEventSetLightTheme;
}