
import 'package:hasap_admin/app/platform_type/app_platform.dart';

/// Метод для поставки вида платформы. Реализация для неподдерживаемой платформы
AppPlatform providePlatform() {
  throw StateError('Platform not supported');
}