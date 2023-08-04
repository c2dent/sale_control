import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';

class SelectEmployeeDropdown extends StatelessWidget {
  final void Function(Employee?) onChange;
  final Employee? employee;
  final Future<List<Employee>> Function() getEmployees;

  const SelectEmployeeDropdown({super.key, required this.employee, required this.onChange, required this.getEmployees});

  @override
  Widget build(BuildContext context) {
    return CDropDownSearch(
      label: "Ishchiler",
      selectedItem: employee,
      itemAsString: (Employee employee) => "${employee.firstName} ${employee.lastName}",
      onChanged: (Employee? employee) {
        onChange(employee);
      },
      validation: (Employee? employee) {
        if (employee == null) return "Hokman saylamaly";
        return null;
      },
      asyncItems: (String? filter) => getEmployees(),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }

}