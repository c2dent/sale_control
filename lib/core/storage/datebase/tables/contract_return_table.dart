import 'package:drift/drift.dart';

class ContractReturnTable extends Table {
  TextColumn get id => text()();

  TextColumn get contractId => text()();

  TextColumn get officeId => text()();

  TextColumn get creatorId => text().nullable()();

  DateTimeColumn get date => dateTime()();

  TextColumn get reason => text().nullable()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
