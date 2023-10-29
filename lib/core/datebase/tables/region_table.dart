import 'package:drift/drift.dart';

class RegionTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get parentId => integer().nullable().references(RegionTable, #id)();
}