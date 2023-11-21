import 'package:drift/drift.dart';
import 'package:hasap_admin/core/storage/datebase/tables/office_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/region_table.dart';

class ClientTable extends Table {
  TextColumn get id => text()();

  TextColumn get officeId => text().nullable().references(OfficeTable, #id)();

  TextColumn get firstName => text()();

  TextColumn get lastName => text()();

  TextColumn get surName => text().nullable()();

  TextColumn get phone => text()();

  TextColumn get phone2 => text().nullable()();

  IntColumn get regionId => integer().references(RegionTable, #id)();

  TextColumn get description => text().nullable()();

  TextColumn get creatorId => text().nullable()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
