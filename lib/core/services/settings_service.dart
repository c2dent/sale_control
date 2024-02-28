import 'dart:convert';

import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

abstract class SettingsService {
  Future<User?> getCurrentUser();
}

@Singleton(as: SettingsService)
class SettingsServiceImpl extends SettingsService {
  final KeyValueStore keyValueStore;

  SettingsServiceImpl(this.keyValueStore);

  @override
  Future<User?> getCurrentUser() async {
    String? userJson = await keyValueStore.read(StoreKeys.prefsCurrentUserData);
    if (userJson == null) return null;
    try {
      var userData = jsonDecode(userJson);
      return User.fromJson(userData);
    } catch (e) {
      await keyValueStore.write(StoreKeys.prefsCurrentUserData, null);
      return null;
    }
  }
}
