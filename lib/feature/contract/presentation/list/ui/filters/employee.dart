import 'package:flutter/material.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';

class EmployeeDropdownFilter extends FilterWidget<EmployeeTableData> {
  final ContractBloc bloc;

  EmployeeDropdownFilter({
    super.key,
    super.value,
    required this.bloc,
    required super.onChange,
    required super.values,
  });

  @override
  Widget build(BuildContext context) {

    return CDropDownSearch<EmployeeTableData>(
      label: "Goshan",
      selectedItem: value,
      itemAsString: (EmployeeTableData employee) => "${employee.firstName} ${employee.lastName}",
      onChanged: (EmployeeTableData? employee) {
        value = employee;
        onChange(employee);
        bloc.add(const ContractEvent.filter());
      },
      asyncItems: (String? filter) => bloc.interactor.getEmployees(),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}