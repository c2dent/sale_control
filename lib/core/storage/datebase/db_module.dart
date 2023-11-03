import 'package:hasap_admin/arch/drift_migrator/drift_migrator.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/migration_observer_logger.dart';
import 'package:injectable/injectable.dart';

import 'db_query_executer/shared.dart';

/// Модуль для поставления зависимостей, связанных с БД Drift
@module
abstract class DbModule {
  /// При необходимости новой миграции нужно увеличить версию [schemaVersion] (N)
  /// Реализовать новую миграцию на версию N - DriftMigrationN, и добавить ее в перечень [migration]
  @singleton
  AppDatabase appDatabase({
    required MigrationObserverLogger observer,
  }) {
    return AppDatabase(
      queryExecutor: createQueryExecutor(),
      migrator: DriftMigrator<AppDatabase>(
        migrationLogics: {},
        schemaVersion: 1,
        observer: observer,
      ),
    );
  }
}