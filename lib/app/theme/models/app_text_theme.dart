import 'package:flutter/material.dart';

/// Абстракция для базовых текстовых стилей в приложении
///
/// Абстракция фиксирует договоренность по вариантам типографики с командой UX дизайна
/// Такой подход позволяет зафиксировать UX договоренности, что уменьшает количество багов, связанных с шрифтами
abstract class AppTextTheme {
  TextStyle get title1;

  TextStyle get title2;

  TextStyle get subtitle;

  TextStyle get bold20;

  TextStyle get normal20;

  TextStyle get bold18;

  TextStyle get normal18;

  TextStyle get bold17;

  TextStyle get normal17;

  TextStyle get italic17;

  TextStyle get bold16;

  TextStyle get normal16;

  TextStyle get italic16;

  TextStyle get bold14;

  TextStyle get normal14;

  TextStyle get italic14;

  TextStyle get bold12;

  TextStyle get normal12;

  TextStyle get italic12;

  TextStyle get h5Bold;
}

/// Реализация договоренностей по типографике
///
/// В нашей команде данная реализация отражает шаблон типографики в Figma
/// Такой подход позволяет жить шрифтам и в Figma и во Flutter в едином контексте
class BaseTextTheme implements AppTextTheme {
  @override
  TextStyle get title1 => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  @override
  TextStyle get title2 => title1.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get subtitle => title2.copyWith(fontSize: 14);

  @override
  TextStyle get bold12 => const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get bold14 => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get bold16 => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get bold17 => const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get bold18 => const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get bold20 => const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get h5Bold => const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get italic12 => const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get italic14 => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get italic16 => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get italic17 => const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get normal12 => const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get normal14 => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get normal16 => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get normal17 => const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get normal18 => const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );

  @override
  TextStyle get normal20 => const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );
}
