import 'package:drift/drift.dart';

class OperationTable extends Table {
  TextColumn get id => text()();

  TextColumn get operationType => text()();

  DateTimeColumn get date => dateTime()();

  IntColumn get amount => integer()();

  TextColumn get sourceOfficeId => text()();

  TextColumn get targetOfficeId => text().nullable()();

  TextColumn get creatorId => text().nullable()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean()();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
