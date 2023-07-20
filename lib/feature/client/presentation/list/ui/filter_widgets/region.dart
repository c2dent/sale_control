import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc_models.dart';

class RegionDropdown extends FilterWidget<Region> {
  final ClientBloc bloc;

  RegionDropdown({
    super.key,
    super.value,
    required this.bloc,
    required super.onChange,
    required super.values,
  });

  void change(Region? region) {
    value = region;
    onChange(region);
  }

  @override
  void clear() {
    for (int i = 0; i < values.length; i++) {
      values[i] = null;
    }
    value = null;
  }

  @override
  Widget build(BuildContext context) {
    return _RegionDropdown(bloc: bloc, onChange: change, regionList: values);
  }
}

class _RegionDropdown extends StatefulWidget {
  final ClientBloc bloc;
  List<Region?> regionList;
  void Function(Region? value) onChange;

  _RegionDropdown({required this.bloc, required this.onChange, required this.regionList});

  @override
  State<StatefulWidget> createState() => _RegionDropdownState();
}

class _RegionDropdownState extends State<_RegionDropdown> {
  void change(int index, Region? region) {
    widget.regionList[index] = region;

    for (int i = index + 1; i < widget.regionList.length; i++) {
      widget.regionList[i] = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CDropDownSearch<Region>(
          label: "Yashalyan yer",
          selectedItem: widget.regionList[0],
          itemAsString: (Region region) => region.name,
          onChanged: (Region? region) {
            change(0, region);
            widget.onChange(region);
            widget.bloc.add(const ClientEvent.filter());
          },
          asyncItems: (String? filter) => widget.bloc.clientInteractor.getRegions(null),
          compareFn: (item, sItem) => item.id == sItem.id,
        ),
        if (widget.regionList[0] != null && widget.regionList[0]!.childrenCount > 0) const SizedBox(height: 15),
        if (widget.regionList[0] != null && widget.regionList[0]!.childrenCount > 0)
          CDropDownSearch<Region>(
            label: "Yashalyan yer",
            selectedItem: widget.regionList[1],
            itemAsString: (Region region) => region.name,
            onChanged: (Region? region) {
              change(1, region);
              widget.onChange(region);
              widget.bloc.add(const ClientEvent.filter());
            },
            asyncItems: (String? filter) => widget.bloc.clientInteractor.getRegions(widget.regionList[0]),
            compareFn: (item, sItem) => item.id == sItem.id,
          ),
        if (widget.regionList[1] != null && widget.regionList[1]!.childrenCount > 0) const SizedBox(height: 15),
        if (widget.regionList[1] != null && widget.regionList[1]!.childrenCount > 0)
          CDropDownSearch<Region>(
            label: "Yashalyan yer",
            selectedItem: widget.regionList[2],
            itemAsString: (Region region) => region.name,
            onChanged: (Region? region) {
              change(2, region);
              widget.onChange(region);
              widget.bloc.add(const ClientEvent.filter());
            },
            asyncItems: (String? filter) => widget.bloc.clientInteractor.getRegions(widget.regionList[1]),
            compareFn: (item, sItem) => item.id == sItem.id,
          ),
      ],
    );
  }
}