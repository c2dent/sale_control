import 'package:flutter/material.dart';

/// Абстракция для поставки базовых цветовых токенов в приложении
///
/// Абстракция фиксирует договоренность c UX командой по цветовым псевдонимам
/// Обратите внимание, именование отражает логическую суть применения цвета
abstract class AppColorTheme {
  //============================== Main Colors ==============================
  Brightness get brightness;

  Color get primary;

  Color get onPrimary;

  Color get secondary;

  Color get onSecondary;

  Color get error;

  Color get onError;

  Color get background;

  Color get onBackground;

  Color get surface;

  Color get onSurface;

  Color get success;

  Color get onSuccess;

  Color get warning;

  Color get onWarning;

  Color get textPrimary;

  Color get textSecondary;
}

/// Реализация светлой цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class LightColorTheme implements AppColorTheme {
  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get primary => Colors.purple;

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get secondary => Colors.pink;

  @override
  Color get onSecondary => Colors.white;

  @override
  Color get error => Colors.red.shade500;

  @override
  Color get onError => Colors.white;

  @override
  Color get background => Colors.grey.shade100;

  @override
  Color get onBackground => Colors.black;

  @override
  Color get surface => Colors.white;

  @override
  Color get onSurface => Colors.black;

  @override
  Color get success => Colors.green.shade500;

  @override
  Color get onSuccess => Colors.white;

  @override
  Color get warning => Colors.yellow.shade800;

  @override
  Color get onWarning => Colors.white;

  @override
  Color get textPrimary => Colors.black;

  @override
  Color get textSecondary => Colors.grey.shade800;

  const LightColorTheme() : super();
}

/// Реализация темной цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class DarkRedColorTheme extends LightColorTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get primary => Colors.deepPurple;

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get secondary => Colors.pink;

  @override
  Color get onSecondary => Colors.white;

  @override
  Color get error => Colors.red.shade500;

  @override
  Color get onError => Colors.white;

  @override
  Color get background => Colors.grey.shade700;

  @override
  Color get onBackground => Colors.grey.shade100;

  @override
  Color get surface => Colors.grey.shade900;

  @override
  Color get onSurface => Colors.grey.shade100;

  @override
  Color get success => Colors.green.shade500;

  @override
  Color get onSuccess => Colors.white;

  @override
  Color get warning => Colors.yellow.shade800;

  @override
  Color get onWarning => Colors.white;

  @override
  Color get textPrimary => Colors.white;

  @override
  Color get textSecondary => Colors.grey.shade200;

  const DarkRedColorTheme() : super();
}