import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/contract_return_sync.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/contract_return/presentation/create/bloc/contract_return_create_bloc_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class ContractReturnMapper {
  final SettingsService _settingsService;

  ContractReturnMapper(this._settingsService);

  static ContractReturnTableCompanion fromContractReturnSync(ContractReturnSync contractReturnSync) {
    return ContractReturnTableCompanion(
      id: Value(contractReturnSync.id),
      contractId: Value(contractReturnSync.contractId),
      creatorId: Value(contractReturnSync.creatorId),
      officeId: Value(contractReturnSync.officeId),
      date: Value(contractReturnSync.date),
      reason: Value(contractReturnSync.reason),
      createdAt: Value(contractReturnSync.createdAt),
      modifiedAt: Value(contractReturnSync.modifiedAt),
      isDeleted: Value(contractReturnSync.isDeleted),
    );
  }

  Future<ContractReturnTableCompanion> fromContractReturnCreateStateData({required ContractReturnCreateStateData data, required bool forCreate}) async {
    var uuid = const Uuid();
    User? user = await _settingsService.getCurrentUser();

    return ContractReturnTableCompanion(
        id: Value(forCreate ? uuid.v4() : data.contractReturn!.contractReturn.id),
        officeId: Value(forCreate ? user!.office.id : data.contractReturn!.contractReturn.officeId),
        creatorId: Value(forCreate ? user?.employee.id : data.contractReturn!.contractReturn.creatorId),
        contractId: Value(data.contract!.contract.id),
        date: Value(data.date),
        reason: Value(data.reason.text),
        createdAt: Value(forCreate ? DateTime.now() : data.contractReturn!.contractReturn.createdAt),
        modifiedAt: Value(DateTime.now()),
        isDeleted: const Value(false),
        isSynced: const Value(false));
  }
}
