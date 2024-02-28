import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/product_operation_mapper.dart';
import 'package:hasap_admin/core/models/sync/product_operation_sync.dart';
import 'package:hasap_admin/core/services/product_operation_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/product_operation_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductOperationSyncService implements TableSync {
  final ProductOperationApiService _apiService;
  final ProductOperationMapper _mapper;
  final ProductOperationDao _dao;

  ProductOperationSyncService(this._apiService, this._mapper, this._dao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsProductOperationLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await _apiService.getProductOperationSync(params);
    if (result.isLeft) return false;

    List<ProductOperationSync> operations = result.right;
    for (ProductOperationSync operation in operations) {
      ProductOperationTableCompanion companion = _mapper.fromProductOperationSync(operation);
      final result = await _dao.isExists(operation.id);
      if (result.isLeft) return false;

      final res = result.right ? await _dao.updateProductOperation(companion) : await _dao.insertProductOperation(companion);
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