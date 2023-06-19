
import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';

class ErrorSnackbar {
  /// Метод оторбажающий снекбар c возможностью указать
  /// текст кнопки и колбэка нажатия по кнопке (должны быть указаны и текст и колбэк нажатия)
  ///  [context] - контекст
  ///  [text] - текст основной
  ///  [actionLabel] - текст на кнопке (если указан)
  ///  [actionPressedCallback] - колбэк нажатия на кнопку
  static void show({
    required BuildContext context,
    required String text,
    String? actionLabel,
    VoidCallback? actionPressedCallback,
  }) {
    final colorTheme = AppTheme.of(context).colorTheme;

    final snackBarAction = (actionLabel != null && actionPressedCallback != null)
        ? SnackBarAction(
      textColor: colorTheme.onError,
      label: actionLabel,
      onPressed: actionPressedCallback,
    )
        : null;

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(text),
          backgroundColor: colorTheme.error,
          action: snackBarAction,
    ));
  }
}