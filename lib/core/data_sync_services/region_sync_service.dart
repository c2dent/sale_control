import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/region_mapper.dart';
import 'package:hasap_admin/core/models/sync/region_sync.dart';
import 'package:hasap_admin/core/services/region_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/region_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegionSyncService implements TableSync {
  final RegionApiService regionApiService;
  final RegionDao regionDao;

  RegionSyncService(this.regionApiService, this.regionDao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsRegionLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await regionApiService.getRegionsSync(params);
    if (result.isLeft) return false;

    List<RegionSync> regions = result.right;
    for (RegionSync region in regions) {
      RegionTableCompanion regionTableCompanion = RegionSyncMapper.fromRegionSync(region);
      final isExists = await regionDao.isExists(region.id);
      if (isExists.isLeft) return false;

      final res = isExists.right ? await regionDao.updateRegion(regionTableCompanion) : await regionDao.insertRegion(regionTableCompanion);
      if (res.isLeft) return false;
    }
    return true;
  }

  @override
  Future<void> outgoingSync() async {}
}
