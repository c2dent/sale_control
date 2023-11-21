import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/functional_models/either.dart';
import 'package:hasap_admin/core/mappers/region_mapper.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/tables/region_table.dart';
import 'package:injectable/injectable.dart';

part 'region_dao.g.dart';

@injectable
@DriftAccessor(tables: [RegionTable])
class RegionDao extends DatabaseAccessor<AppDatabase> with _$RegionDaoMixin {
  final DriftErrorHandler<DefaultDriftError> _errorHandler = GetIt.instance.get<DriftErrorHandler<DefaultDriftError>>();

  RegionDao(AppDatabase db) : super(db);

  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getAllRegions() async {
    return await _errorHandler.processRequest(() async {
      final rows = await (select(db.regionTable)..where((tbl) => tbl.isDeleted.equals(false))).get();

      final List<Region> regions = [];
      for (final row in rows) {
        int childCount = await (select(db.regionTable)..where((tbl) => tbl.parentId.equals(row.id))).get().then((value) => value.length);
        final region = RegionSyncMapper.fromRegionTableData(row, childCount);
        regions.add(region);
      }

      return regions;
    });
  }

  Future<void> insertRegion(RegionTableCompanion region) => into(db.regionTable).insert(region);

  Future<void> updateRegion(RegionTableCompanion region) => update(db.regionTable).replace(region);

  Future<void> deleteRegion(RegionTableCompanion region) => delete(db.regionTable).delete(region);

  Future<bool> isExists(int id) => (select(db.regionTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull().then((value) => value != null);

  Future<Either<DriftRequestError<DefaultDriftError>, List<Region>>> getRegionsByParams(Map<String, String> params) async {
    String queryLevel0 = 'SELECT region.name, region.level, region.id, (SELECT COUNT(*) FROM region_table WHERE parent_id = region.id) AS "children_count" '
        'FROM region_table region WHERE region.level = 0;';

    String queryByParentId = 'SELECT region.name, region.level, region.id, (SELECT COUNT(*) FROM region_table WHERE parent_id = region.id) AS "children_count" '
        'FROM region_table region WHERE region.parent_id = ?;';

    return await _errorHandler.processRequest(() {
      if (params.containsKey('id')) {
        return customSelect(queryByParentId, variables: [Variable(params['id'])], readsFrom: {regionTable})
            .map((row) => RegionSyncMapper.regionFromQueryRow(row))
            .get();
      }

      return customSelect(queryLevel0, readsFrom: {regionTable}).map((row) => RegionSyncMapper.regionFromQueryRow(row)).get();
    });
  }
}
