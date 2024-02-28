
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';

/// Статическое хранилище ключей [TypeStoreKey] используемых в приложении
class StoreKeys {
  static final prefsVersionKey = TypeStoreKey<int>('prefs_version_key');
  static final prefsRegionLastUpdateDateKey = TypeStoreKey<String>('prefs_region_last_update_date_key');
  static final prefsOfficeLastUpdateDateKey = TypeStoreKey<String>('prefs_office_last_update_date_key');
  static final prefsEmployeeLastUpdateDateKey = TypeStoreKey<String>('prefs_employee_last_update_date_key');
  static final prefsClientLastUpdateDateKey = TypeStoreKey<String>('prefs_client_last_update_date_key');
  static final prefsContractLastUpdateDateKey = TypeStoreKey<String>('prefs_contract_last_update_date_key');
  static final prefsContractReturnLastUpdateDateKey = TypeStoreKey<String>('prefs_contract_return_last_update_date_key');
  static final prefsOperationLastUpdateDateKey = TypeStoreKey<String>('prefs_operation_last_update_date_key');
  static final prefsPaymentLastUpdateDateKey = TypeStoreKey<String>('prefs_payment_last_update_date_key');
  static final prefsServiceLastUpdateDateKey = TypeStoreKey<String>('prefs_service_last_update_date_key');
  static final prefsProductLastUpdateDateKey = TypeStoreKey<String>('prefs_product_last_update_date_key');
  static final prefsAdmissionLastUpdateDateKey = TypeStoreKey<String>('prefs_admission_last_update_date_key');
  static final prefsProductOperationLastUpdateDateKey = TypeStoreKey<String>('prefs_product_operation_last_update_date_key');
  static final prefsLastCommonUpdateDateKey = TypeStoreKey<String>('prefs_last_common_update_date_key');
  static final prefsCurrentEmployeeId = TypeStoreKey<String>('prefs_current_employee_id');
  static final prefsCurrentOfficeId = TypeStoreKey<String>('prefs_current_office_id');
  static final prefsCurrentUserData = TypeStoreKey<String>('prefs_current_user_data');
  static final prefsRefreshToken = TypeStoreKey<String>('prefs_refresh_token');
  static final prefsAccessToken = TypeStoreKey<String>('prefs_access_token');
}