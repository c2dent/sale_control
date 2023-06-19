import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/area.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc_models.dart';

class AreaDropdown extends FilterWidget<Area> {
  final ClientBloc bloc;

  AreaDropdown({super.key, super.value, required this.bloc, required super.onChange});

  @override
  Widget build(BuildContext context) {

    return CDropDownSearch<Area>(
      label: "Etrap",
      selectedItem: value,
      itemAsString: (Area area) => area.name,
      onChanged: (Area? area) {
        value = area;
        onChange(area);
        bloc.add(const ClientEvent.filter());
      },
      asyncItems: (String? filter) => bloc.clientInteractor.getAreas(),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}