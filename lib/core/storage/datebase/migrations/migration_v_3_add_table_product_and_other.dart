import 'package:drift/drift.dart';

import '../../../../arch/drift_migrator/drift_migration_logic.dart';
import '../app_database.dart';

class MigrationV3AddTableProductAndOther implements DriftMigrationLogic<AppDatabase> {
  @override
  Future<void> migrate(AppDatabase database, Migrator m) async {
  }

  @override
  int get schemeVersion => 3;

}