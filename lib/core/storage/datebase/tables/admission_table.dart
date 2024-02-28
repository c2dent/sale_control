import 'package:drift/drift.dart';

class AdmissionTable extends Table {
  TextColumn get id => text()();

  DateTimeColumn get date => dateTime()();

  TextColumn get officeId => text()();

  TextColumn get description => text().nullable()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();
}
