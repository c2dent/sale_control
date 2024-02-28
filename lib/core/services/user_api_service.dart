import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hasap_admin/arch/dio_error_handler/dio_error_handler.dart';
import 'package:hasap_admin/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/consts/injectable_names.dart';
import 'package:hasap_admin/core/mappers/office_mapper.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/office_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

abstract class UserApiService {
  Future<Either<CommonResponseError<DefaultApiError>, User>> authorize(String username, String pass);

  Future<Either<CommonResponseError<DefaultApiError>, bool>> register(String username, String email, String pass);

  Future<Either<CommonResponseError<DefaultApiError>, User>> currentUser();
}

@Singleton(as: UserApiService)
class UserApiServiceImpl extends UserApiService {
  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;
  final KeyValueStore _store;
  final OfficeDao _officeDao;

  UserApiServiceImpl(@Named(InjectableNames.hasapHttpClient) this._client, this._dioErrorHandler, this._store, this._officeDao);

  @override
  Future<Either<CommonResponseError<DefaultApiError>, User>> authorize(String username, String pass) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post('/login/', data: {'username': username, 'password': pass}));
    if (result.isLeft) return Either.left(result.left);
    Map<String, dynamic> data = result.right.data;

    await _store.write(StoreKeys.prefsCurrentUserData, jsonEncode(data['user']));
    await _store.write(StoreKeys.prefsRefreshToken, data['refreshToken'].toString());
    await _store.write(StoreKeys.prefsAccessToken, data['accessToken'].toString());
    User user = User.fromJson(data['user']);

    OfficeTableCompanion officeTableCompanion = OfficeMapper.fromOfficeSync(user.office);
    final isExists = await _officeDao.isExists(user.office.id);
    if (isExists.isRight) {
      isExists.right ? await _officeDao.updateOffice(officeTableCompanion) : await _officeDao.insertOffice(officeTableCompanion);
    }

    return Either.right(user);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, bool>> register(String username, String email, String pass) async {
    final result = await _dioErrorHandler.processRequest(() => _client.post('/register/', data: {'username': username, 'password': pass, 'email': email}));

    if (result.isLeft) return Either.left(result.left);
    return const Either.right(true);
  }

  @override
  Future<Either<CommonResponseError<DefaultApiError>, User>> currentUser() async {
    final result = await _dioErrorHandler.processRequest(() => _client.get('/current-user/'));
    if (result.isLeft) return Either.left(result.left);

    await _store.write(StoreKeys.prefsCurrentUserData, jsonEncode(result.right.data));
    return Either.right(User.fromJson(result.right.data));
  }
}
