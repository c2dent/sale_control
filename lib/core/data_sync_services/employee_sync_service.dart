import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/employee_mapper.dart';
import 'package:hasap_admin/core/models/sync/employee_sync.dart';
import 'package:hasap_admin/core/services/employee_api_service.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/employee_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';

@injectable
class EmployeeSyncService implements TableSync {
  final EmployeeApiService _employeeApiService;
  final EmployeeDao _employeeDao;

  EmployeeSyncService(this._employeeApiService, this._employeeDao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsEmployeeLastUpdateDateKey;

  @override
  Future<bool> incomingSync(Map<String, String> params) async {
    final result = await _employeeApiService.getEmployeesSync(params);
    if (result.isLeft) return false;

    List<EmployeeSync> employees = result.right;
    for (EmployeeSync employee in employees) {
      EmployeeTableCompanion employeeTableCompanion = EmployeeMapper.fromEmployeeSync(employee);
      final result = await _employeeDao.isExists(employee.id);
      if (result.isLeft) return false;

      final res = result.right ? await _employeeDao.updateEmployee(employeeTableCompanion) : await _employeeDao.insertEmployee(employeeTableCompanion);
      if (res.isLeft) return false;
    }
    return true;
  }

  @override
  Future<void> outgoingSync() async {}
}
