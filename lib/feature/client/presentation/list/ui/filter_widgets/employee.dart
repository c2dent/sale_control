import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc_models.dart';

class EmployeeFilterDropdown extends FilterWidget<Employee> {
  final ClientBloc bloc;

  EmployeeFilterDropdown({
    super.key,
    super.value,
    required this.bloc,
    required super.onChange,
    required super.values,
  });

  @override
  void clear() {
    value = null;
  }

  @override
  Widget build(BuildContext context) {

    return CDropDownSearch<Employee>(
      label: "Goshan",
      selectedItem: value,
      itemAsString: (Employee employee) => "${employee.firstName} ${employee.lastName}",
      onChanged: (Employee? employee) {
        value = employee;
        onChange(employee);
        bloc.add(const ClientEvent.filter());
      },
      asyncItems: (String? filter) => bloc.interactor.getEmployees({}),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}