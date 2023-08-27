import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/office.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc_models.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';

class OfficeFilterDropdown extends FilterWidget<Office> {
  final ContractBloc bloc;

  OfficeFilterDropdown({
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
        bloc.add(const ContractEvent.filter());
      },
      asyncItems: (String? filter) => bloc.interactor.getOffices({}),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}