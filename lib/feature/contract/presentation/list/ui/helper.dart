import 'package:flutter/material.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/utils.dart';

(Color, Color) getPaymentColor(ContractTableData contract, ThemeData theme) {
  DateTime currentDate = DateTime.now();
  Duration difference = contract.nextPaymentTime.difference(currentDate);
  int daysDiff = difference.inDays;

  if (contract.closed) {
    return (theme.colorScheme.primary, theme.colorScheme.onPrimary);
  } else if (daysDiff > -1 && daysDiff < 6) {
    return (theme.colorScheme.errorContainer, theme.colorScheme.onErrorContainer);
  } else if (daysDiff > 5) {
    return (theme.colorScheme.primary, theme.colorScheme.onPrimary);
  } else {
    return (theme.colorScheme.error, theme.colorScheme.onError);
  }
}

String getPaymentDate(ContractTableData contractTableData) {
  if (contractTableData.closed) return "yapyk";
  return formattingDate(contractTableData.nextPaymentTime);
}