import 'package:flutter/foundation.dart';
import 'package:hasap_admin/arch/drift_migrator/migration_observer.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Реализация обозревателя миграций, логирующего информацию о миграциях
@singleton
class MigrationObserverLogger implements MigrationObserver {
  @protected
  final Logger logger;

  MigrationObserverLogger(this.logger);

  @override
  Future<void> onCreate(int createdVersion) async {
    logger.d('Drift onCreate $createdVersion');
  }

  @override
  Future<void> onMissedMigration(int version) async {
    logger.e('Drift onMissedMigration  $version');
  }

  @override
  Future<void> onUpgrade(int fromVersion, int toVersion) async {
    logger.e('Drift onUpgrade $fromVersion -> $toVersion');
  }
}