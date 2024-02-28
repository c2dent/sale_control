import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/admission_mapper.dart';
import 'package:hasap_admin/core/models/sync/admission_sync.dart';
import 'package:hasap_admin/core/services/admission_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/daos/admission_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

import '../storage/datebase/app_database.dart';

@injectable
class AdmissionSyncService implements TableSync {
  final AdmissionApiService _apiService;
  final AdmissionMapper _mapper;
  final AdmissionDao _dao;

  AdmissionSyncService(this._apiService, this._mapper, this._dao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsAdmissionLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await _apiService.getAdmissionSync(params);
    if (result.isLeft) return false;

    List<AdmissionSync> items = result.right;
    for (AdmissionSync item in items) {
      AdmissionTableCompanion companion = _mapper.fromAdmissionSync(item);
      final result = await _dao.isExists(item.id);
      if (result.isLeft) return false;

      final res = result.right ? await _dao.updateAdmission(companion) : await _dao.insertAdmission(companion);
      if (res.isLeft) return false;
    }
    return true;
  }

  @override
  Future<void> outgoingSync() async {}
}
