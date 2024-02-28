import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/office_mapper.dart';
import 'package:hasap_admin/core/models/sync/office_sync.dart';
import 'package:hasap_admin/core/services/office_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/office_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

@injectable
class OfficeSyncService implements TableSync {
  final OfficeApiService _officeApiService;
  final OfficeDao _officeDao;

  OfficeSyncService(this._officeApiService, this._officeDao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsOfficeLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await _officeApiService.getList(params);

    if (result.isLeft) return false;

    List<OfficeSync> offices = result.right;
    for (OfficeSync office in offices) {
      OfficeTableCompanion officeTableCompanion = OfficeMapper.fromOfficeSync(office);
      final result = await _officeDao.isExists(office.id);
      if (result.isLeft) return false;

      final res = result.right ? await _officeDao.updateOffice(officeTableCompanion) : await _officeDao.insertOffice(officeTableCompanion);
      if (res.isLeft) return false;
    }
    return true;
  }

  @override
  Future<void> outgoingSync() async {}
}
