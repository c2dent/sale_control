import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(leading: const Icon(Icons.contact_mail), title: const Text("Profile"), onTap: () => context.router.replaceNamed('/profile')),
          ListTile(leading: const Icon(Icons.shopping_cart), title: const Text("Musderiler"), onTap: () => context.router.replaceNamed('/client_list')),
          ListTile(leading: const Icon(Icons.assignment), title: const Text("Kontraktlar"), onTap: () => context.router.replaceNamed('/contract_list')),
          ListTile(leading: const Icon(Icons.attach_money), title: const Text("Tolegler"), onTap: () => context.router.replaceNamed('/payment_list')),
          ListTile(leading: const Icon(Icons.room_service), title: const Text("Hyzmatlar"), onTap: () => context.router.replaceNamed('/service_list')),
          ListTile(leading: const Icon(Icons.read_more_sharp), title: const Text("Возвраты"), onTap: () => context.router.replaceNamed('/return_list'))
        ],
      ),
    );
  }
}
