import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';

class AppThemeProvider extends InheritedWidget {
  final AppTheme theme;

  const AppThemeProvider({
    required this.theme,
    required Widget child,
    Key? key,
}): super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static AppThemeProvider of(BuildContext context) {
    final themeProvider = context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
    if (themeProvider == null) throw StateError('AppThemeProvider are not provider in widget three');

    return themeProvider;
  }
}