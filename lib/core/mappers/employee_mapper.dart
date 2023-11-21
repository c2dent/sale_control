import 'package:drift/drift.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/sync/employee_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class EmployeeMapper {
  static EmployeeTableCompanion fromEmployeeSync(EmployeeSync employeeSync) {
    return EmployeeTableCompanion(
      id: Value(employeeSync.id),
      firstName: Value(employeeSync.firstName),
      lastName: Value(employeeSync.lastName),
      surName: Value(employeeSync.surName),
      phone: Value(employeeSync.phone),
      phone2: Value(employeeSync.phone2),
      officeId: Value(employeeSync.officeId),
      createdAt: Value(employeeSync.createdAt),
      modifiedAt: Value(employeeSync.modifiedAt),
      isDeleted: Value(employeeSync.isDeleted),
    );
  }

  static Employee fromEmployeeTableData(EmployeeTableData employee) {
    return Employee(
        id: employee.id,
        firstName: employee.firstName,
        lastName: employee.lastName,
        phone: employee.phone,
        phone2: employee.phone2,
        createdAt: employee.createdAt,
        modifiedAt: employee.modifiedAt);
  }
}
