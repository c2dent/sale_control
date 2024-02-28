import 'package:flutter/material.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';

(Color, Color) getBgColorAmount(ServiceType type, ThemeData theme) {
  switch (type.operationType) {
    case 'OUTCOME':
      return (theme.colorScheme.error, theme.colorScheme.onError);
    case 'INCOME':
      return (theme.colorScheme.primary, theme.colorScheme.onPrimary);
    default:
      return (theme.colorScheme.tertiary, theme.colorScheme.onTertiary);
  }
}