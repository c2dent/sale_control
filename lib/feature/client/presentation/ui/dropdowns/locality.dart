import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/locality.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc_models.dart';

class LocalityDropdown extends FilterWidget<Locality> {
  final ClientBloc bloc;

  LocalityDropdown({super.key, super.value, required this.bloc, required super.onChange});

  @override
  Widget build(BuildContext context) {

    return CDropDownSearch<Locality>(
      label: "Yasalyan yeri",
      selectedItem: value,
      itemAsString: (Locality locality) => locality.name,
      onChanged: (Locality? locality) {
        value = locality;
        onChange(locality);
        bloc.add(const ClientEvent.filter());
      },
      asyncItems: (String? filter) => bloc.clientInteractor.getLocalities(),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}