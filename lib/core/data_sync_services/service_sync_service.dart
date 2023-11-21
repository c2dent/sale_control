import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/service_mapper.dart';
import 'package:hasap_admin/core/models/sync/service_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/service_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/feature/service/data/services/service_api_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceSyncService implements TableSync {
  final ServiceApiService _apiService;
  final ServiceDao _dao;

  ServiceSyncService(this._apiService, this._dao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsServiceLastUpdateDateKey;

  @override
  Future<void> incomingSync(Map<String, String> params) async {
    final result = await _apiService.listSync(params);
    if (result.isLeft) return;

    List<ServiceSync> services = result.right;
    for (ServiceSync service in services) {
      ServiceTableCompanion companion = ServiceMapper.fromServiceSync(service);
      final result = await _dao.isExists(service.id);
      if (result.isLeft) return;

      result.right ? await _dao.updateService(companion) : _dao.insertService(companion);
    }
  }

  @override
  Future<void> outgoingSync() async {
    final result = await _dao.getUnSyncedData();
    if (result.isLeft) return;
    List<Map<String, dynamic>> data = result.right;

    final response = await _apiService.setSyncData(data);
    if (response.isLeft) return;
    await _dao.allSynced();
  }
}
