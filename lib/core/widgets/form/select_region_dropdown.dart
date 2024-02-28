import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/repositories/region_repository.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';

class SelectRegionDropdown extends StatelessWidget {
  final void Function(Region? region, List<Region?> regions) onChange;
  final List<Region?> regions;
  final Future<List<Region>> Function(Region? region) getRegions;
  final RegionRepository regionRepository = GetIt.instance<RegionRepository>();

  SelectRegionDropdown({super.key, required this.onChange, required this.getRegions, required this.regions});

  void change(int index, Region? region) {
    List<Region?> tmp = [];
    tmp.addAll(regions);
    tmp[index] = region;

    for (int i = index + 1; i < tmp.length; i++) {
      tmp[i] = null;
    }
    (region != null && region.childrenCount == 0) ? onChange(region, tmp) : onChange(null, tmp);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Welayat:", style: TextStyle(fontSize: 19), textAlign: TextAlign.start),
        const SizedBox(height: 3),
        CDropDownSearch<Region>(
          label: "",
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Etrap:", style: TextStyle(fontSize: 19), textAlign: TextAlign.start),
              const SizedBox(height: 3),
              CDropDownSearch<Region>(
                label: "",
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
            ],
          ),
        if (regions[1] != null && regions[1]!.childrenCount > 0) const SizedBox(height: 15),
        if (regions[1] != null && regions[1]!.childrenCount > 0)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Yashayysh yer:", style: TextStyle(fontSize: 19), textAlign: TextAlign.start),
              const SizedBox(height: 3),
              CDropDownSearch<Region>(
                label: "",
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
          )
      ],
    );
  }
}
