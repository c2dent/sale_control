import 'package:drift/drift.dart';
import 'package:hasap_admin/arch/drift_migrator/drift_migration_logic.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';

class MigrationV2AddTableOffice implements DriftMigrationLogic<AppDatabase> {
  @override
  Future<void> migrate(AppDatabase database, Migrator m) async {
  }

  @override
  int get schemeVersion => 2;

}