import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc_models.dart';

class RegionDropdown extends FilterWidget<Region> {
  final ClientBloc bloc;

  RegionDropdown({
    super.key,
    super.value,
    required this.bloc,
    required super.onChange});

  @override
  Widget build(BuildContext context) {

    return CDropDownSearch<Region>(
      label: "Welayat",
      selectedItem: value,
      itemAsString: (Region region) => region.name,
      onChanged: (Region? region) {
        value = region;
        onChange(region);
        bloc.add(const ClientEvent.filter());
      },
      asyncItems: (String? filter) => bloc.clientInteractor.getRegions(),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}