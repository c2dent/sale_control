import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/core/user/user_repository.dart';
import 'package:injectable/injectable.dart';

abstract class SettingsService {
  Future<User?> getCurrentUser();
}

@Singleton(as: SettingsService)
class SettingsServiceImpl extends SettingsService {
  final UserRepository userRepository;
  final KeyValueStore keyValueStore;

  SettingsServiceImpl(this.userRepository, this.keyValueStore);

  @override
  Future<User?> getCurrentUser() async {
    final result = await userRepository.getUser();
    if (result.isLeft) return null;
    await keyValueStore.write(StoreKeys.prefsCurrentOfficeId, result.right.office.id);
    await keyValueStore.write(StoreKeys.prefsCurrentEmployeeId, result.right.employee.id);
    return result.right;
  }
}
