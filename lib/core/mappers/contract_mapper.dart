import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/contract_sync.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class ContractMapper {
  final SettingsService _settingsService;

  ContractMapper(this._settingsService);

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
      nextPaymentTime: Value(contractSync.nextPaymentTime),
      setupDate: Value(contractSync.setupDate),
      closed: Value(contractSync.closed),
      createdAt: Value(contractSync.createdAt),
      modifiedAt: Value(contractSync.modifiedAt),
      isDeleted: Value(contractSync.isDeleted),
    );
  }

  Future<ContractTableCompanion> fromStateData(ContractCreateStateData data, bool forCreate, String clientId) async {
    var uuid = const Uuid();
    User? currentUser = await _settingsService.getCurrentUser();

    return ContractTableCompanion(
      id: Value(forCreate ? uuid.v4() : data.contract!.contract.id),
      clientId: Value(clientId),
      creatorId: Value(forCreate ? currentUser?.employee.id : data.contract!.creator.id),
      officeId: Value(forCreate ? currentUser!.office.id : data.contract!.contract.officeId),
      priceAmount: Value(int.tryParse(data.priceAmount.text) ?? 0),
      paidAmount: Value(forCreate ? (int.tryParse(data.paidAmount.text) ?? 0) : data.contract!.contract.paidAmount),
      paidMonths: Value(forCreate ? 1 : data.contract!.contract.paidMonths),
      monthCount: Value(int.tryParse(data.monthCount.text) ?? 0),
      costPrice: const Value(3500),
      advertiserId: Value(data.advertiser?.id),
      setupDate: Value(data.setupDate),
      nextPaymentTime: Value(data.nextPaymentDate),
      closed: Value(int.tryParse(data.priceAmount.text) == int.tryParse(data.paidAmount.text)),
      debtOnMonth: Value(int.tryParse(data.dueDateOnMonth.text) ?? 0),
      isDeleted: Value(forCreate ? false : data.contract!.contract.isDeleted),
      isSynced: const Value(false),
      countFilter: Value(forCreate ? 1 : data.contract!.contract.countFilter),
      modifiedAt: Value(DateTime.now()),
      createdAt: Value(forCreate ? DateTime.now() : data.contract!.contract.createdAt),
    );
  }
}
