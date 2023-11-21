import 'package:drift/drift.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:hasap_admin/arch/drift_migrator/drift_migrator.dart';
import 'package:hasap_admin/core/storage/datebase/daos/client_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/contract_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/contract_return_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/employee_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/office_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/operation_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/payment_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/region_dao.dart';
import 'package:hasap_admin/core/storage/datebase/daos/service_dao.dart';
import 'package:hasap_admin/core/storage/datebase/tables/client_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/contract_return_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/contract_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/employee_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/office_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/operation_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/payment_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/region_table.dart';
import 'package:hasap_admin/core/storage/datebase/tables/service_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [RegionTable, OfficeTable, EmployeeTable, ClientTable, ContractTable, ContractReturnTable, OperationTable, PaymentTable, ServiceTable],
  daos: [RegionDao, ClientDao, OfficeDao, EmployeeDao, ContractDao, ContractReturnDao, OperationDao, PaymentDao, ServiceDao],
)
class AppDatabase extends _$AppDatabase {
  @protected
  final DriftMigrator<AppDatabase> migrator;

  @override
  MigrationStrategy get migration => migrator.delegateStrategy(this);

  @override
  int get schemaVersion => migrator.schemaVersion;

  AppDatabase({
    required QueryExecutor queryExecutor,
    required this.migrator,
  }) : super(queryExecutor);
}
