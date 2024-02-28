import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/service_sync.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/services/settings_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/feature/service/presentation/create/bloc/service_create_bloc_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class ServiceMapper {
  final SettingsService _settingsService;

  ServiceMapper(this._settingsService);

  static ServiceTableCompanion fromServiceSync(ServiceSync serviceSync) {
    return ServiceTableCompanion(
      id: Value(serviceSync.id),
      contractId: Value(serviceSync.contractId),
      operationId: Value(serviceSync.operationId),
      creatorId: Value(serviceSync.creatorId),
      type: Value(serviceSync.type),
      amount: Value(serviceSync.amount),
      date: Value(serviceSync.date),
      comment: Value(serviceSync.comment),
      createdAt: Value(serviceSync.createdAt),
      modifiedAt: Value(serviceSync.modifiedAt),
      isDeleted: Value(serviceSync.isDeleted),
    );
  }

  Future<ServiceTableCompanion> fromServiceCreateStateData({required ServiceCreateStateData data, required bool forCreate}) async {
    var uuid = const Uuid();
    User? user = await _settingsService.getCurrentUser();

    return ServiceTableCompanion(
        id: Value(forCreate ? uuid.v4() : data.service!.service.id),
        creatorId: Value(forCreate ? user?.employee.id : data.service?.service.creatorId),
        operationId: Value(forCreate ? "" : data.service!.service.operationId),
        createdAt: Value(forCreate ? DateTime.now() : data.service!.service.createdAt),
        comment: Value(data.comment.text),
        date: Value(data.date),
        modifiedAt: Value(DateTime.now()),
        amount: Value(int.tryParse(data.amount.text) ?? 0),
        type: Value(data.type!.value),
        contractId: Value(data.contract!.contract.id),
        isSynced: const Value(false),
        isDeleted: const Value(false));
  }
}
