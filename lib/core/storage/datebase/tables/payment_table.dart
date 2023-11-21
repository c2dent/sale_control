import 'package:drift/drift.dart';

class PaymentTable extends Table {
  TextColumn get id => text()();

  IntColumn get paidAmount => integer()();

  DateTimeColumn get date => dateTime()();

  TextColumn get operationId => text()();

  TextColumn get contractId => text()();

  TextColumn get creatorId => text().nullable()();

  TextColumn get officeId => text()();

  TextColumn get comment => text().nullable()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
