import 'package:drift/drift.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/models/sync/service_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/feature/service/presentation/create/bloc/service_create_bloc_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class ServiceMapper {
  final KeyValueStore _store;

  ServiceMapper(this._store);

  static ServiceTableCompanion fromServiceSync(ServiceSync serviceSync) {
    return ServiceTableCompanion(
      id: Value(serviceSync.id),
      contractId: Value(serviceSync.contractId),
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
    String? employeeId = await _store.read(StoreKeys.prefsCurrentEmployeeId);

    return ServiceTableCompanion(
      id: Value(forCreate ? uuid.v4() : data.service!.service.id),
      creatorId: Value(forCreate ? employeeId : data.service?.service.creatorId),
      operationId: Value(forCreate ? "" : data.service!.service.operationId),
      createdAt: Value(forCreate ? DateTime.now() : data.service!.service.createdAt),
      comment: Value(data.comment.text),
      date: Value(data.date),
      modifiedAt: Value(DateTime.now()),
      amount: Value(int.tryParse(data.amount.text) ?? 0),
      type: Value(data.type!.value),
      contractId: Value(data.contract!.contract.id),
      isSynced: const Value(false),
      isDeleted: const Value(false)
    );
  }
}