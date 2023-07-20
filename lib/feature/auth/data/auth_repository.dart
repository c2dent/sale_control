import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:injectable/injectable.dart';

/// Заглушка-реализация репозитория пользователей
abstract class AuthRepository {
  bool isAuthorized();

  User? getUser();

  Future<Either<CommonResponseError<DefaultApiError>, bool>> authorize(String username, String pass);

  Future<Either<CommonResponseError<DefaultApiError>, bool>> register(String username, String email, String pass);

  void unAuthorize(BuildContext context);
}

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final _storage = const FlutterSecureStorage();
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  AuthRepositoryImpl(
      @Named(InjectableNames.hasapHttpClient) this._client,
      this._dioErrorHandler,
      );

  bool _isAuthorized = false;
  User? _user;

  @override
  bool isAuthorized() => _isAuthorized;

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> authorize(String username, String pass) async {
    final result = await _dioErrorHandler.processRequest(
            () => _client.post(
            '/login/',
            data: {'username': username, 'password': pass}
        ));

    if (result.isLeft) return Either.left(result.left);

    _user = User.fromJson(result.right.data['user']);
    await _storage.write(key: 'refreshToken', value: result.right.data!['refreshToken']);
    await _storage.write(key: 'accessToken', value: result.right.data['accessToken']);

    _isAuthorized = true;
    return const Either.right(true);
  }

  @override
  void unAuthorize(BuildContext context) async {
    await _storage.deleteAll(); // TODO: Данные не удалены, надо разобраться
    _isAuthorized = false;
    _user = null;
    context.router.replaceNamed('/');
  }

  @override
  User? getUser() => _user;

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> register(String username, String email, String pass) async {
    final result = await _dioErrorHandler.processRequest(
            () => _client.post(
            '/register/',
            data: {'username': username, 'password': pass, 'email': email}
        ));

    if (result.isLeft) return Either.left(result.left);

    return const Either.right(true);
  }
}
