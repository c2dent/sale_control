import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract_return/presentation/list/bloc/contract_return_bloc.dart';
import 'package:hasap_admin/feature/contract_return/presentation/list/bloc/contract_return_bloc_models.dart';

class ContractReturnOfficeFilterDropdown extends FilterWidget<Office> {
  final ContractReturnBloc bloc;

  ContractReturnOfficeFilterDropdown({
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
    return CDropDownSearch<Office>(
      label: "Ofis",
      selectedItem: value,
      itemAsString: (Office office) => office.title,
      onChanged: (Office? office) {
        value = office;
        onChange(office);
        bloc.add(const ContractReturnEvent.filter());
      },
      asyncItems: (String? filter) => bloc.interactor.getOffices({}),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}
