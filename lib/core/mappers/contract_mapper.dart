import 'package:drift/drift.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/models/sync/contract_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class ContractMapper {
  final KeyValueStore _store;

  ContractMapper(this._store);

  static ContractTableCompanion fromContractSync(ContractSync contractSync) {
    return ContractTableCompanion(
      id: Value(contractSync.id),
      officeId: Value(contractSync.officeId),
      clientId: Value(contractSync.clientId),
      advertiserId: Value(contractSync.advertiserId),
      creatorId: Value(contractSync.creatorId),
      countFilter: Value(contractSync.countFilter),
      monthCount: Value(contractSync.monthCount),
      costPrice: Value(contractSync.costPrice),
      debtOnMonth: Value(contractSync.debtOnMonth),
      priceAmount: Value(contractSync.priceAmount),
      paidMonths: Value(contractSync.paidMonths),
      paidAmount: Value(contractSync.paidAmount),
      setupDate: Value(contractSync.setupDate),
      closed: Value(contractSync.closed),
      createdAt: Value(contractSync.createdAt),
      modifiedAt: Value(contractSync.modifiedAt),
      isDeleted: Value(contractSync.isDeleted),
    );
  }

  Future<ContractTableCompanion> fromStateData(ContractCreateStateData data, bool forCreate, String clientId) async {
    var uuid = const Uuid();
    String? officeId = await _store.read(StoreKeys.prefsCurrentOfficeId);
    String? employeeId = await _store.read(StoreKeys.prefsCurrentEmployeeId);

    return ContractTableCompanion(
      id: Value(forCreate ? uuid.v4() : data.contract!.contract.id),
      clientId: Value(clientId),
      creatorId: Value(forCreate ? employeeId : data.contract!.creator.id),
      officeId: Value(forCreate ? officeId! : data.contract!.contract.officeId),
      priceAmount: Value(int.tryParse(data.priceAmount.text) ?? 0),
      paidAmount: Value(forCreate ? (int.tryParse(data.paidAmount.text) ?? 0) : data.contract!.contract.paidAmount),
      paidMonths: Value(forCreate ? 1 : data.contract!.contract.paidMonths),
      monthCount: Value(int.tryParse(data.monthCount.text) ?? 0),
      costPrice: const Value(3500),
      advertiserId: Value(data.advertiser?.id),
      setupDate: Value(data.setupDate),
      nextPaymentTime: Value(forCreate ? addMonths(data.setupDate, 1) : data.setupDate),
      closed: Value(int.tryParse(data.priceAmount.text) == int.tryParse(data.paidAmount.text)),
      debtOnMonth: Value(int.tryParse(data.dueDateOnMonth.text) ?? 0),
      isDeleted: const Value(false),
      isSynced: const Value(false),
      countFilter: const Value(1),
      modifiedAt: Value(DateTime.now()),
      createdAt: Value(forCreate ? DateTime.now() : data.contract!.contract.createdAt),
    );
  }
}
