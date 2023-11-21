import 'package:flutter/material.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:logger/logger.dart';

typedef ParseError<DE> = Future<DE?> Function(dynamic error);

abstract class DriftErrorHandler<DE> {
  Future<Either<DriftRequestError<DE>, T>> processRequest<T>(Future<T> Function() databaseRequest);
}

class DriftErrorHandlerImpl<DE> implements DriftErrorHandler<DE>{

  @protected
  final Logger logger;
  @protected
  ParseError<DE> parseError;

  DriftErrorHandlerImpl({
    required this.logger,
    required this.parseError,
  });


  @override
  Future<Either<DriftRequestError<DE>, T>> processRequest<T>(Future<T> Function() databaseRequest) async {
    try {
      final result = await databaseRequest();
      if (result is DriftRequestError<DE>) return Either.left(result);
      return Either.right(result);
    } catch (e) {
      final result = await parseError(e);
      if (result != null) {
        return Either.left(DriftRequestError.customError(result));
      }

      return Either.left(DriftRequestError.undefinedError(e));
    }
  }

}