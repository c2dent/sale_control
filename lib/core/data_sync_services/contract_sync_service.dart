import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/contract_mapper.dart';
import 'package:hasap_admin/core/models/sync/contract_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/contract_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/feature/contract/data/services/contract_api_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractSyncService implements TableSync {
  final ContractApiService _apiService;
  final ContractDao _dao;

  ContractSyncService(this._apiService, this._dao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsContractLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await _apiService.listSync(params);
    if (result.isLeft) return false;

    List<ContractSync> contracts = result.right;
    for (ContractSync contract in contracts) {
      ContractTableCompanion contractTableCompanion = ContractMapper.fromContractSync(contract);
      final result = await _dao.isExists(contract.id);
      if (result.isLeft) return false;

      final res = result.right ? await _dao.updateContract(contractTableCompanion) : await _dao.insertContract(contractTableCompanion);
      if (res.isLeft) return false;
    }
    return true;
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
