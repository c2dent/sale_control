import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/sync/region_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegionSyncMapper {
  RegionTableCompanion fromRegionSync(RegionSync regionSync) {
    return RegionTableCompanion(
      id: Value(regionSync.id),
      name: Value(regionSync.name),
      parentId: Value(regionSync.parentId),
      level: Value(regionSync.level),
      lft: Value(regionSync.lft),
      rght: Value(regionSync.rght),
      createdAt: Value(regionSync.createdAt),
      modifiedAt: Value(regionSync.updatedAt),
    );
  }
}