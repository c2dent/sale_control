import 'package:flutter/material.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

class SelectContractDropdown extends StatelessWidget {
  final void Function(Contract?) onChange;
  final Contract? contract;
  final Future<List<Contract>> Function() getContracts;

  const SelectContractDropdown({Key? key, required this.contract, required this.onChange, required this.getContracts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CDropDownSearch(
      label: "Shertnama",
      selectedItem: contract,
      itemAsString: (Contract contract) => "${contract.client.firstName} ${contract.client.lastName}",
      onChanged: (Contract? contract) {
        onChange(contract);
      },
      validation: (Contract? contract) {
        if (contract == null) return "Hokman saylamaly";
        return null;
      },
      asyncItems: (String? filter) => getContracts(),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }
}
