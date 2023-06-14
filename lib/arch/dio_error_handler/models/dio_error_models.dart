import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_error_models.freezed.dart';
part 'dio_error_models.g.dart';

/// Общий вид ошибки возвращаемой на запрос
@freezed
class CommonResponseError<Custom> with _$CommonResponseError {
  bool get isNoNetwork => this is _NoNetwork;

  bool get isUnAuthorized => this is _UnAuthorized;

  bool get isTooManyRequests => this is _TooManyRequests;

  bool get isServerNotAvailable => this is _ServerNotAvailable;

  bool get isCustomError => this is _CustomError<Custom>;

  bool get isUndefinedError => this is _UndefinedError;

  bool get isServerError => this is _ServerError;

  Custom? get safeCustom => this is _CustomError<Custom> ? (this as _CustomError<Custom>).customError : null;

  const CommonResponseError._();

  ///Во время запроса отсутствовал интернет
  const factory CommonResponseError.noNetwork() = _NoNetwork;

  const factory CommonResponseError.serverNotAvailable() = _ServerNotAvailable;

  ///Сервер требует более высокий уровень доступа к методу
  const factory CommonResponseError.unAuthorized() = _UnAuthorized;

  ///Сервер вернул ошибку, показывающую, что мы превысили количество запросов
  const factory CommonResponseError.tooManyRequests() = _TooManyRequests;

  /// Обработана специфичная ошибка [CustomError]
  const factory CommonResponseError.customError(Custom customError) = _CustomError;

  /// Ошибка в сервере
  const factory CommonResponseError.serverError() = _ServerError;

  /// Неизвестная ошибка
  const factory CommonResponseError.undefinedError(Object? errorObject) = _UndefinedError;
}

@freezed
class DefaultApiError with _$DefaultApiError {
  const factory DefaultApiError({
    required String name,
    required String code,
  }) = _DefaultApiError;

  factory DefaultApiError.fromJson(Map<String, dynamic> json) => _$DefaultApiErrorFromJson(json);
}