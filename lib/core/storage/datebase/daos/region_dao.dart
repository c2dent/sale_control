
import 'package:drift/drift.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/region_table.dart';
import 'package:injectable/injectable.dart';

part 'region_dao.g.dart';

@injectable
@DriftAccessor(tables: [RegionTable])
class RegionDao extends DatabaseAccessor<AppDatabase> with _$RegionDaoMixin {
  RegionDao(AppDatabase db) : super(db);

  Future<List<RegionTableData>> getAllRegions() => select(db.regionTable).get();

  Future<void> insertRegion(RegionTableCompanion region) => into(db.regionTable).insert(region);

  Future<void> updateRegion(RegionTableCompanion region) => update(db.regionTable).replace(region);

  Future<void> deleteRegion(RegionTableCompanion region) => delete(db.regionTable).delete(region);

  Future<bool> isExists(int id) => (select(db.regionTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull().then((value) => value != null);
}