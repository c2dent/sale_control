import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/operation_mapper.dart';
import 'package:hasap_admin/core/models/sync/operation_sync.dart';
import 'package:hasap_admin/core/services/operation_api_servie.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/operation_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

@injectable
class OperationSyncService implements TableSync {
  final OperationApiService _apiService;
  final OperationDao _dao;
  final OperationMapper _mapper;

  OperationSyncService(this._apiService, this._dao, this._mapper);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsOperationLastUpdateDateKey;

  @override
  Future<void> incomingSync(Map<String, String> params) async{
    final result = await _apiService.getOperationsSync(params);
    if (result.isLeft) return;

    List<OperationSync> operations = result.right;
    for (OperationSync operation in operations) {
      OperationTableCompanion operationTableCompanion = _mapper.fromOperationSync(operation);
      final result = await _dao.isExists(operation.id);
      if (result.isLeft) return;

      result.right ? await _dao.updateOperation(operationTableCompanion) : await _dao.insertOperation(operationTableCompanion);
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