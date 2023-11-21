import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/contract_return_mapper.dart';
import 'package:hasap_admin/core/models/sync/contract_return_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/contract_return_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/feature/contract_return/data/services/contract_return_api_services.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContractReturnSyncService implements TableSync {
  final ContractReturnApiService _apiService;
  final ContractReturnDao _dao;

  ContractReturnSyncService(this._apiService, this._dao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsContractReturnLastUpdateDateKey;

  @override
  Future<void> incomingSync(Map<String, String> params) async {
    final result = await _apiService.listSync(params);

    if (result.isLeft) {
      return;
    }

    List<ContractReturnSync> returns = result.right;
    for (ContractReturnSync ret in returns) {
      ContractReturnTableCompanion contractReturnTableCompanion = ContractReturnMapper.fromContractReturnSync(ret);
      final result = await _dao.isExists(ret.id);
      if (result.isLeft) return;

      result.right ? await _dao.updateContractReturn(contractReturnTableCompanion) : await _dao.insertContractReturn(contractReturnTableCompanion);
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
