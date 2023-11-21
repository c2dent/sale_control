import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/models/sync/office_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class OfficeMapper {
  static OfficeTableCompanion fromOfficeSync (OfficeSync officeSync) {
    return OfficeTableCompanion(
      id: Value(officeSync.id),
      title: Value(officeSync.title),
      filterCount: Value(officeSync.filterCount),
      balance: Value(officeSync.balance),
      createdAt: Value(officeSync.createdAt),
      modifiedAt: Value(officeSync.modifiedAt),
      isDeleted: Value(officeSync.isDeleted),
    );
  }

  static Office officeFromOfficeTableData(OfficeTableData officeTableData) {
    return Office(
      id: officeTableData.id,
      title: officeTableData.title,
      filterCount: officeTableData.filterCount,
      balance: officeTableData.balance,
    );
  }
}