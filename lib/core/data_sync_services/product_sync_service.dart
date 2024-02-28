import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/services/product_api_service.dart';
import 'package:injectable/injectable.dart';

import '../mappers/product_mapper.dart';
import '../models/sync/product_sync.dart';
import '../storage/datebase/app_database.dart';
import '../storage/datebase/daos/product_dao.dart';
import '../storage/sharedPrefs/store_keys.dart';

@injectable
class ProductSyncService implements TableSync {
  final ProductApiService _apiService;
  final ProductDao _dao;
  final ProductMapper _mapper;

  ProductSyncService(this._apiService, this._dao, this._mapper);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsProductLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await _apiService.getProductSync(params);
    if (result.isLeft) return false;

    List<ProductSync> products = result.right;
    for (ProductSync product in products) {
      ProductTableCompanion companion = _mapper.fromProductSync(product);
      final result = await _dao.isExists(product.id);
      if (result.isLeft) return false;

      final res = result.right ? await _dao.updateProduct(companion) : await _dao.insertProduct(companion);
      if (res.isLeft) return false;
    }
    return true;
  }

  @override
  Future<void> outgoingSync() async {}
}
