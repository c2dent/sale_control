import 'package:drift/drift.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:hasap_admin/arch/drift_migrator/drift_migrator.dart';
import 'package:hasap_admin/core/storage/datebase/daos/region_dao.dart';
import 'package:hasap_admin/core/storage/datebase/tables/region_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [RegionTable],
  daos: [RegionDao],
)
class AppDatabase extends _$AppDatabase {

  @protected
  final DriftMigrator<AppDatabase> migrator;

  @override
  MigrationStrategy get migration => migrator.delegateStrategy(this);

  @override
  int get schemaVersion => migrator.schemaVersion;

  AppDatabase({
    required QueryExecutor queryExecutor,
    required this.migrator,
  }) : super(queryExecutor);
}
