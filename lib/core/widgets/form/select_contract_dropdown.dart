import 'package:flutter/material.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

class SelectContractDropdown extends StatelessWidget {
  final void Function(ContractData?) onChange;
  final ContractData? contract;
  final Future<List<ContractData>> Function() getContracts;
  final List<ContractData>? items;

  const SelectContractDropdown({Key? key, required this.contract, required this.onChange, required this.getContracts, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CDropDownSearch(
      label: "Shertnama",
      selectedItem: contract,
      itemAsString: (ContractData contract) => contract.clientName,
      onChanged: (ContractData? contract) {
        onChange(contract);
      },
      validation: (ContractData? contract) {
        if (contract == null) return "Hokman saylamaly";
        return null;
      },
      asyncItems: (String? filter) => getContracts(),
      compareFn: (item, sItem) => item.contract.id == sItem.contract.id,
    );
  }
}
