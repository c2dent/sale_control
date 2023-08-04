import 'package:flutter/material.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';

class SelectClientDropdown extends StatelessWidget {
  final void Function(Client? client) onChange;
  final Client? client;
  final Future<List<Client>> Function() getClients;

  const SelectClientDropdown({super.key, required this.client, required this.onChange, required this.getClients});

  @override
  Widget build(BuildContext context) {
    return CDropDownSearch(
      label: "Mushderi",
      selectedItem: client,
      itemAsString: (Client client) => "${client.firstName} ${client.lastName}",
      onChanged: (Client? client) {
        onChange(client);
      },
      validation: (Client? client) {
        if (client == null) return "Hokman saylamaly";
        return null;
      },
      asyncItems: (String? filter) => getClients(),
      compareFn: (item, sItem) => item.id == sItem.id,
    );
  }

}