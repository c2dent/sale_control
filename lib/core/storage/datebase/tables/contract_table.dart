import 'package:drift/drift.dart';
import 'package:hasap_admin/core/storage/datebase/tables/client_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/employee_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/office_table.dart';

class ContractTable extends Table {
  TextColumn get id => text()();

  TextColumn get officeId => text().references(OfficeTable, #id)();

  TextColumn get clientId => text().references(ClientTable, #id)();

  TextColumn get advertiserId => text().nullable().references(EmployeeTable, #id)();

  TextColumn get creatorId => text().nullable()();

  IntColumn get countFilter => integer()();

  IntColumn get monthCount => integer()();

  IntColumn get costPrice => integer()();

  IntColumn get debtOnMonth => integer()();

  IntColumn get priceAmount => integer()();

  IntColumn get paidMonths => integer()();

  IntColumn get paidAmount => integer()();

  DateTimeColumn get setupDate => dateTime()();

  DateTimeColumn get nextPaymentTime => dateTime()();

  BoolColumn get closed => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime()();

  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
