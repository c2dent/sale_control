import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/region_sync_mapper.dart';
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
  final RegionSyncMapper regionSyncMapper;

  RegionSyncService(this.regionApiService, this.regionDao, this.regionSyncMapper);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsRegionLastUpdateDateKey;

  @override
  Future<void> incomingSync() async {
    final result = await regionApiService.getRegionsSync({});

    if (result.isLeft) {
      return;
    }

    List<RegionSync> regions = result.right;

    try {
      for (RegionSync region in regions) {
        RegionTableCompanion regionTableCompanion = regionSyncMapper.fromRegionSync(region);
        bool isExists = await regionDao.isExists(region.id);

        isExists ? await regionDao.updateRegion(regionTableCompanion) : await regionDao.insertRegion(regionTableCompanion);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> outgoingSync() async {}
}
