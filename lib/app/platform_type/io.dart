import 'dart:io';

import 'package:hasap_admin/app/platform_type/app_platform.dart';



/// Метод для поставки вида платформы. Реализация для IO, на текущий момент: Android, iOS
AppPlatform providePlatform() {
  if (Platform.isAndroid) {
    return AppPlatform.android;
  } else if (Platform.isIOS) {
    return AppPlatform.ios;
  } else {
    throw StateError('Platform not supported');
  }
}