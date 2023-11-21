import 'package:drift/drift.dart';

class ServiceTable extends Table {
  TextColumn get id => text()();

  TextColumn get contractId => text()();

  TextColumn get type => text()();

  TextColumn get comment => text().nullable()();

  IntColumn get amount => integer()();

  DateTimeColumn get date => dateTime()();

  TextColumn get creatorId => text().nullable()();

  TextColumn get operationId => text()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
