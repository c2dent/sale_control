import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/admission_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdmissionMapper {
  AdmissionTableCompanion fromAdmissionSync(AdmissionSync item) {
    return AdmissionTableCompanion(
      id: Value(item.id),
      date: Value(item.date),
      description: Value(item.description),
      officeId: Value(item.officeId),
      createdAt: Value(item.createdAt),
      modifiedAt: Value(item.modifiedAt),
      isDeleted: Value(item.isDeleted),
      isSynced: const Value(true),
    );
  }
}
