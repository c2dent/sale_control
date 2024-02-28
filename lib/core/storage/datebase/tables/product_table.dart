import 'package:drift/drift.dart';

class ProductTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  BoolColumn get isNew => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
