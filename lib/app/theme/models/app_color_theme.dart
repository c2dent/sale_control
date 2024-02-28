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

  Color get primaryContainer;

  Color get onPrimaryContainer;

  Color get secondary;

  Color get onSecondary;

  Color get secondaryContainer;

  Color get onSecondaryContainer;

  Color get tertiary;

  Color get onTertiary;

  Color get tertiaryContainer;

  Color get onTertiaryContainer;

  Color get error;

  Color get errorContainer;

  Color get onError;

  Color get onErrorContainer;

  Color get background;

  Color get onBackground;

  Color get surface;

  Color get onSurface;

  Color get surfaceVariant;

  Color get onSurfaceVariant;

  Color get outline;

  Color get onInverseSurface;

  Color get inverseSurface;

  Color get inversePrimary;

  Color get shadow;

  Color get surfaceTint;

  Color get outlineVariant;

  Color get scrim;

  ColorScheme getColorScheme();
}

/// Реализация светлой цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class LightColorTheme implements AppColorTheme {
  const LightColorTheme() : super();

  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get primary => const Color(0xFF006C48);

  @override
  Color get onPrimary => const Color(0xFFFFFFFF);

  @override
  Color get primaryContainer => const Color(0xFF8CF7C2);

  @override
  Color get onPrimaryContainer => const Color(0xFF002113);

  @override
  Color get secondary => const Color(0xFF4D6356);

  @override
  Color get onSecondary => const Color(0xFFFFFFFF);

  @override
  Color get secondaryContainer => const Color(0xFFD0E8D8);

  @override
  Color get onSecondaryContainer => const Color(0xFF0A1F15);

  @override
  Color get tertiary => const Color(0xFF3D6472);

  @override
  Color get onTertiary => const Color(0xFFFFFFFF);

  @override
  Color get tertiaryContainer => const Color(0xFFC0E9FA);

  @override
  Color get onTertiaryContainer => const Color(0xFF001F28);

  @override
  Color get error => const Color(0xFFBA1A1A);

  @override
  Color get errorContainer => const Color(0xFFFFDAD6);

  @override
  Color get onError => const Color(0xFFFFFFFF);

  @override
  Color get onErrorContainer => const Color(0xFF410002);

  @override
  Color get background => const Color(0xFFFBFDF8);

  @override
  Color get onBackground => const Color(0xFF191C1A);

  @override
  Color get surface => const Color(0xFFFBFDF8);

  @override
  Color get onSurface => const Color(0xFF191C1A);

  @override
  Color get surfaceVariant => const Color(0xFFDCE5DD);

  @override
  Color get onSurfaceVariant => const Color(0xFF404943);

  @override
  Color get outline => const Color(0xFF707973);

  @override
  Color get onInverseSurface => const Color(0xFFEFF1ED);

  @override
  Color get inverseSurface => const Color(0xFF2E312F);

  @override
  Color get inversePrimary => const Color(0xFF70DBA7);

  @override
  Color get shadow => const Color(0xFF000000);

  @override
  Color get surfaceTint => const Color(0xFF006C48);

  @override
  Color get outlineVariant => const Color(0xFFC0C9C1);

  @override
  Color get scrim => const Color(0xFF000000);

  @override
  ColorScheme getColorScheme() => ColorScheme(
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        error: error,
        background: background,
        brightness: brightness,
        onBackground: onBackground,
        onError: onError,
        onSurface: onSurface,
        surface: surface,
        errorContainer: errorContainer,
        inversePrimary: inversePrimary,
        inverseSurface: inverseSurface,
        onErrorContainer: onErrorContainer,
        onInverseSurface: onInverseSurface,
        onSurfaceVariant: onSurfaceVariant,
        onTertiary: onTertiary,
        onTertiaryContainer: onTertiaryContainer,
        outline: outline,
        outlineVariant: outlineVariant,
        scrim: scrim,
        shadow: shadow,
        surfaceTint: surfaceTint,
        surfaceVariant: surfaceVariant,
        tertiary: tertiary,
        tertiaryContainer: tertiaryContainer,
      );
}

/// Реализация темной цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class DarkRedColorTheme extends LightColorTheme {
  const DarkRedColorTheme() : super();

  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get primary => const Color(0xFF70DBA7);

  @override
  Color get onPrimary => const Color(0xFF003824);

  @override
  Color get primaryContainer => const Color(0xFF005235);

  @override
  Color get onPrimaryContainer => const Color(0xFF8CF7C2);

  @override
  Color get secondary => const Color(0xFFB4CCBC);

  @override
  Color get onSecondary => const Color(0xFF20352A);

  @override
  Color get secondaryContainer => const Color(0xFF364B3F);

  @override
  Color get onSecondaryContainer => const Color(0xFFD0E8D8);

  @override
  Color get tertiary => const Color(0xFFA4CDDE);

  @override
  Color get onTertiary => const Color(0xFF063543);

  @override
  Color get tertiaryContainer => const Color(0xFF234C5A);

  @override
  Color get onTertiaryContainer => const Color(0xFFC0E9FA);

  @override
  Color get error => const Color(0xFFFFB4AB);

  @override
  Color get errorContainer => const Color(0xFF93000A);

  @override
  Color get onError => const Color(0xFF690005);

  @override
  Color get onErrorContainer => const Color(0xFFFFDAD6);

  @override
  Color get background => const Color(0xFF191C1A);

  @override
  Color get onBackground => const Color(0xFFE1E3DF);

  @override
  Color get surface => const Color(0xFF191C1A);

  @override
  Color get onSurface => const Color(0xFFE1E3DF);

  @override
  Color get surfaceVariant => const Color(0xFF404943);

  @override
  Color get onSurfaceVariant => const Color(0xFFC0C9C1);

  @override
  Color get outline => const Color(0xFF8A938C);

  @override
  Color get onInverseSurface => const Color(0xFF191C1A);

  @override
  Color get inverseSurface => const Color(0xFFE1E3DF);

  @override
  Color get inversePrimary => const Color(0xFF006C48);

  @override
  Color get shadow => const Color(0xFF000000);

  @override
  Color get surfaceTint => const Color(0xFF70DBA7);

  @override
  Color get outlineVariant => const Color(0xFF404943);

  @override
  Color get scrim => const Color(0xFF000000);

  @override
  ColorScheme getColorScheme() => ColorScheme(
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        error: error,
        background: background,
        brightness: brightness,
        onBackground: onBackground,
        onError: onError,
        onSurface: onSurface,
        surface: surface,
        errorContainer: errorContainer,
        inversePrimary: inversePrimary,
        inverseSurface: inverseSurface,
        onErrorContainer: onErrorContainer,
        onInverseSurface: onInverseSurface,
        onSurfaceVariant: onSurfaceVariant,
        onTertiary: onTertiary,
        onTertiaryContainer: onTertiaryContainer,
        outline: outline,
        outlineVariant: outlineVariant,
        scrim: scrim,
        shadow: shadow,
        surfaceTint: surfaceTint,
        surfaceVariant: surfaceVariant,
        tertiary: tertiary,
        tertiaryContainer: tertiaryContainer,
      );
}
