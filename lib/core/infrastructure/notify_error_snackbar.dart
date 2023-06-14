import 'package:flutter/cupertino.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class NotifyErrorSnackbar {

  void notify(CommonResponseError<DefaultApiError> error, BuildContext context) {
    if (error.isServerNotAvailable) {
      ErrorSnackbar.show(context: context, text: "Сервер не доступен");
    } else if (error.isNoNetwork) {
      ErrorSnackbar.show(context: context, text: "Нет соединение с интернетом");
    } else if (error.isServerError) {
      ErrorSnackbar.show(context: context, text: "Ошибка в сервере");
    } else if (error.isCustomError) {
      ErrorSnackbar.show(context: context, text: error.safeCustom != null ? error.safeCustom!.name : "Неизвестная ошибка");
    } else {
      ErrorSnackbar.show(context: context, text: "Неисвестноя ошибка");
    }
  }
}