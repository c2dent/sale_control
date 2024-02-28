import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/payment_mapper.dart';
import 'package:hasap_admin/core/models/sync/payment_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/payment_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/feature/payment/data/services/payment_api_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaymentSyncService implements TableSync {
  final PaymentApiService _apiService;
  final PaymentDao _dao;
  final PaymentMapper _mapper;

  PaymentSyncService(this._apiService, this._dao, this._mapper);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsPaymentLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await _apiService.listSync(params);
    if (result.isLeft) return false;

    List<PaymentSync> payments = result.right;
    for (PaymentSync payment in payments) {
      PaymentTableCompanion companion = _mapper.fromPaymentSync(payment);
      final result = await _dao.isExists(payment.id);
      if (result.isLeft) return false;

      final res = result.right ? await _dao.updatePayment(companion) : await _dao.insertPayment(companion);
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
