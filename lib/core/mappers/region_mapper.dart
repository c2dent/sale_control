import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/models/sync/region_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegionSyncMapper {
  static RegionTableCompanion fromRegionSync(RegionSync regionSync) {
    return RegionTableCompanion(
      id: Value(regionSync.id),
      name: Value(regionSync.name),
      parentId: Value(regionSync.parentId),
      level: Value(regionSync.level),
      lft: Value(regionSync.lft),
      rght: Value(regionSync.rght),
      createdAt: Value(regionSync.createdAt),
      modifiedAt: Value(regionSync.modifiedAt),
      isDeleted: Value(regionSync.isDeleted),
    );
  }

  static Region regionFromQueryRow(QueryRow row) {
    return Region(
      id: row.read<int>('id'),
      name: row.read<String>('name'),
      level: row.read<int>('level'),
      childrenCount: row.read<int>('children_count'),
      fullName: "full ${row.read<String>('name')}",
    );
  }

  static Region fromRegionTableData(RegionTableData region, int childrenCount) {
    return Region(
        id: region.id,
        name: region.name,
        level: region.level,
        childrenCount: childrenCount,
        fullName: region.name,
    );
  }
}