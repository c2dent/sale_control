import 'package:flutter/material.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

class SelectContractDropdown extends StatelessWidget {
  final void Function(ContractData?) onChange;
  final ContractData? initialContract;
  final List<ContractData> items;

  const SelectContractDropdown({super.key, required this.initialContract, required this.onChange, required this.items});

  List<DropdownMenuEntry<ContractData>> getItems() {
    List<DropdownMenuEntry<ContractData>> contracts = [];
    for (ContractData item in items) {
      contracts.add(DropdownMenuEntry<ContractData>(value: item, label: item.clientName));
    }
    return contracts;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<ContractData>(
      enableFilter: true,
      requestFocusOnTap: true,
      expandedInsets: EdgeInsets.zero,
      initialSelection: initialContract,
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        contentPadding: EdgeInsets.only(left: 8),
        border: OutlineInputBorder(),
      ),
      label: const Text("Shertnama"),
      dropdownMenuEntries: getItems(),
      onSelected: (ContractData? contract) {
        onChange(contract);
      },
    );
  }
}
