import 'package:freezed_annotation/freezed_annotation.dart';

part 'drift_error_models.freezed.dart';

@freezed
class DriftRequestError<Custom> with _$DriftRequestError {
  const factory DriftRequestError.customError(Custom customError) = _CustomError;

  const factory DriftRequestError.undefinedError(Object? errorObject) = _UndefinedError;

  const DriftRequestError._();

  Custom? get safeCustom => this is _CustomError<Custom> ? (this as _CustomError<Custom>).customError : null;
}

@freezed
class DefaultDriftError with _$DefaultDriftError {
  const factory DefaultDriftError({
    required String error,
  }) = _DefaultDriftError;
}

class DriftError implements Exception {
  final String message;

  DriftError(this.message);

  @override
  String toString() {
    return 'DriftException: $message';
  }
}
