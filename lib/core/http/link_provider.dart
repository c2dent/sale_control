import 'package:hasap_admin/consts/http_const.dart';
import 'package:injectable/injectable.dart';

/// Сущность для поставки url в разные места приложения
@singleton
class LinkProvider {
  String get finspaceHost => '${const String.fromEnvironment("API_BASE_URL")}/api';
}