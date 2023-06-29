import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/payment/presentation/list/bloc/payment_bloc.dart';
import 'package:hasap_admin/feature/payment/presentation/list/bloc/payment_bloc_models.dart';

class TaskMasterDropdown extends FilterWidget<Employee> {
  final PaymentBloc bloc;

  TaskMasterDropdown({super.key, super.value, required this.bloc, required super.onChange});

  @override
  Widget build(BuildContext context) {

    return CDropDownSearch<Employee>(
      label: "Birgadir",
      selectedItem: value,
      itemAsString: (Employee employee) => "${employee.firstName} ${employee.lastName}",
      onChanged: (Employee? employee) {
        value = employee;
        onChange(employee);
        bloc.add(const PaymentEvent.filter());
      },
      asyncItems: (String? filter) => bloc.paymentInteractor.getEmployees({"post_type": "task_master"}),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}