import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';

class TaskMasterDropdown extends FilterWidget<Employee> {
  final ContractBloc bloc;

  TaskMasterDropdown({
    super.key,
    super.value,
    required this.bloc,
    required super.onChange,
    required super.values,
  });

  @override
  Widget build(BuildContext context) {

    return CDropDownSearch<Employee>(
      label: "Birgadir",
      selectedItem: value,
      itemAsString: (Employee employee) => "${employee.firstName} ${employee.lastName}",
      onChanged: (Employee? employee) {
        value = employee;
        onChange(employee);
        bloc.add(const ContractEvent.filter());
      },
      asyncItems: (String? filter) => bloc.interactor.getEmployees({"post_type": "task_master"}),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}