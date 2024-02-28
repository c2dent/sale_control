import 'package:drift/drift.dart';

class ProductOperationTable extends Table {
  TextColumn get id => text()();

  TextColumn get productId => text()();

  TextColumn get admissionId => text().nullable()();

  TextColumn get sourceOfficeId => text()();

  TextColumn get targetOfficeId => text().nullable()();

  TextColumn get operationType => text()();

  IntColumn get count => integer()();

  RealColumn get price => real()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();
}
