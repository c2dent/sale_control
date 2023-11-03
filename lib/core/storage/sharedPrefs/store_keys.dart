
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';

/// Статическое хранилище ключей [TypeStoreKey] используемых в приложении
class StoreKeys {
  static final prefsVersionKey = TypeStoreKey<int>('prefs_version_key');
  static final prefsRegionLastUpdateDateKey = TypeStoreKey<String>('prefs_region_last_update_date_key');
}