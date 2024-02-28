import 'package:hasap_admin/arch/drift_error_handler/drift_error_handler.dart';
import 'package:hasap_admin/arch/drift_error_handler/models/drift_error_models.dart';
import 'package:hasap_admin/arch/drift_migrator/drift_migrator.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/migration_observer_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'db_query_executer/shared.dart';

/// Модуль для поставления зависимостей, связанных с БД Drift
@module
abstract class DbModule {
  /// При необходимости новой миграции нужно увеличить версию [schemaVersion] (N)
  /// Реализовать новую миграцию на версию N - DriftMigrationN, и добавить ее в перечень [migration]
  @singleton
  AppDatabase appDatabase({
    required MigrationObserverLogger observer,
    required KeyValueStore keyValueStore,
  }) {
    keyValueStore.init();

    return AppDatabase(
      queryExecutor: createQueryExecutor(),
      migrator: DriftMigrator<AppDatabase>(
        migrationLogics: {
          // MigrationV2AddTableOffice(),
        },
        schemaVersion: 2,
        observer: observer,
      ),
    );
  }

  @singleton
  DriftErrorHandler<DefaultDriftError> makeDriftErrorHandler(Logger logger) => DriftErrorHandlerImpl<DefaultDriftError>(
    logger: logger,
    parseError: (json) async {
      //метод, парсящий ошибку от сервера
      if (json == null) return null;
      if (json is DriftError) return DefaultDriftError(error: json.message);
      return const DefaultDriftError(error: "Неизвестная ошибка");
    },
  );
}