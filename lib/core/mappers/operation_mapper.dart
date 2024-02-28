import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/operation_sync.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class OperationMapper {
  final SettingsService _settingsService;

  OperationMapper(this._settingsService);

  OperationTableCompanion fromOperationSync(OperationSync operationSync) {
    return OperationTableCompanion(
      id: Value(operationSync.id),
      amount: Value(operationSync.amount),
      creatorId: Value(operationSync.creatorId),
      sourceOfficeId: Value(operationSync.sourceOfficeId),
      targetOfficeId: Value(operationSync.targetOfficeId),
      operationType: Value(operationSync.operationType),
      date: Value(operationSync.date),
      createdAt: Value(operationSync.createdAt),
      modifiedAt: Value(operationSync.modifiedAt),
      isDeleted: Value(operationSync.isDeleted),
      isSynced: const Value(true),
    );
  }

  Future<OperationTableCompanion> fromPaymentCompanion(PaymentTableCompanion paymentTableCompanion, bool forCreate) async {
    var uuid = const Uuid();
    User? user = await _settingsService.getCurrentUser();

    return OperationTableCompanion(
        id: Value(forCreate ? uuid.v4() : paymentTableCompanion.operationId.value),
        createdAt: Value(forCreate ? DateTime.now() : paymentTableCompanion.createdAt.value),
        modifiedAt: Value(DateTime.now()),
        operationType: const Value('INCOME'),
        isSynced: const Value(false),
        date: Value(paymentTableCompanion.date.value),
        isDeleted: const Value(false),
        creatorId: Value(forCreate ? user?.employee.id : paymentTableCompanion.creatorId.value),
        amount: Value(paymentTableCompanion.paidAmount.value),
        sourceOfficeId: Value(forCreate ? user!.office.id : paymentTableCompanion.officeId.value));
  }

  Future<OperationTableCompanion> fromServiceCompanion(ServiceTableCompanion companion, bool forCreate) async {
    var uuid = const Uuid();
    User? user = await _settingsService.getCurrentUser();

    return OperationTableCompanion(
        id: Value(forCreate ? uuid.v4() : companion.operationId.value),
        createdAt: Value(forCreate ? DateTime.now() : companion.createdAt.value),
        modifiedAt: Value(DateTime.now()),
        operationType: Value(ServiceType.getServiceTypeFromString(companion.type.value).operationType),
        isSynced: const Value(false),
        date: Value(companion.date.value),
        isDeleted: const Value(false),
        creatorId: Value(forCreate ? user?.employee.id : companion.creatorId.value),
        amount: Value(companion.amount.value),
        sourceOfficeId: Value(user!.office.id));
  }
}
