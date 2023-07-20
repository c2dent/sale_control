import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/repositories/region_repository.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';

class SelectRegionDropdown extends StatelessWidget {
  void Function(Region? region, List<Region?> regions) onChange;
  List<Region?> regions;
  Future<List<Region>> Function(Region? region) getRegions;

  SelectRegionDropdown({super.key, required this.onChange, required this.getRegions, required this.regions});

  final RegionRepository regionRepository = GetIt.instance<RegionRepository>();

  void change(int index, Region? region) {
    List<Region?> tmp = [];
    tmp.addAll(regions);
    tmp[index] = region;

    for(int i = index + 1; i < tmp.length; i++) {
      tmp[i] = null;
    }
    (region != null && region.childrenCount == 0) ? onChange(region, tmp) : onChange(null, tmp);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CDropDownSearch<Region>(
          label: "Yashalyan yer",
          selectedItem: regions[0],
          itemAsString: (Region region) => region.name,
          onChanged: (Region? region) {
            change(0, region);
          },
          validation: (Region? region) {
            if (regions[0] == null && region == null) return "Hokman saylamaly";
            return null;
          },
          asyncItems: (String? filter) => getRegions(null),
          compareFn: (item, sItem) => item.id == sItem.id,
        ),
        if (regions[0] != null && regions[0]!.childrenCount > 0) const SizedBox(height: 15),
        if (regions[0] != null && regions[0]!.childrenCount > 0)
          CDropDownSearch<Region>(
            label: "Yashalyan yer",
            selectedItem: regions[1],
            itemAsString: (Region region) => region.name,
            onChanged: (Region? region) {
              change(1, region);
            },
            validation: (Region? region) {
              if (regions[1] == null && region == null) return "Hokman saylamaly";
              return null;
            },
            asyncItems: (String? filter) => getRegions(regions[0]),
            compareFn: (item, sItem) => item.id == sItem.id,
          ),
        if (regions[1] != null && regions[1]!.childrenCount > 0) const SizedBox(height: 15),
        if (regions[1] != null && regions[1]!.childrenCount > 0)
          CDropDownSearch<Region>(
            label: "Yashalyan yer",
            selectedItem: regions[2],
            itemAsString: (Region region) => region.name,
            onChanged: (Region? region) {
              change(2, region);
            },
            validation: (Region? region) {
              if (regions[2] == null && region == null) return "Hokman saylamaly";
              return null;
            },
            asyncItems: (String? filter) => getRegions(regions[1]),
            compareFn: (item, sItem) => item.id == sItem.id,
          ),
      ],
    );
  }
}
