import 'package:drift/drift.dart';

class OfficeTable extends Table {
  TextColumn get id => text()();

  TextColumn get title => text()();

  IntColumn get filterCount => integer()();

  IntColumn get balance => integer()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
