import 'package:drift/drift.dart';

class RegionTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  IntColumn get level => integer()();

  IntColumn get lft => integer()();

  IntColumn get rght => integer()();

  IntColumn get parentId => integer().nullable().references(RegionTable, #id)();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();
}
