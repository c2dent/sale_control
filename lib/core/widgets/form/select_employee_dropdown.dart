import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';

class SelectEmployeeDropdown extends StatefulWidget {
  final void Function(EmployeeTableData?) onChange;
  final EmployeeTableData? employee;
  final List<EmployeeTableData> employees;

  const SelectEmployeeDropdown({super.key, required this.employee, required this.onChange, required this.employees});

  @override
  State<SelectEmployeeDropdown> createState() => _SelectEmployeeDropdownState();
}

class _SelectEmployeeDropdownState extends State<SelectEmployeeDropdown> {
  @override
  Widget build(BuildContext context) {
    EmployeeTableData? value = widget.employee;

    List<DropdownMenuEntry<EmployeeTableData>> getItems() {
      List<DropdownMenuEntry<EmployeeTableData>> items = [];
      for (var item in widget.employees) {
        items.add(DropdownMenuEntry<EmployeeTableData>(value: item, label: "${item.firstName} ${item.lastName}"));
      }
      return items;
    }

    return DropdownMenu<EmployeeTableData>(
      enableFilter: true,
      requestFocusOnTap: true,
      expandedInsets: EdgeInsets.zero,
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        contentPadding: EdgeInsets.only(left: 8),
        border: OutlineInputBorder(),
      ),
      label: const Text("Reklamachy"),
      initialSelection: widget.employee,
      dropdownMenuEntries: getItems(),
      onSelected: (item) {
        setState(() {
          value = item;
        });
        widget.onChange(item);
      },
    );
  }
}
