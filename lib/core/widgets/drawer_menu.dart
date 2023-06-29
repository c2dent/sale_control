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
          ListTile(
              title: const Text("Musderiler"),
              onTap: () => context.router.replaceNamed('/client_list')),
          ListTile(
              title: const Text("Contractlar"),
              onTap: () => context.router.replaceNamed('/contract_list')),
          ListTile(
              title: const Text("Tolegler"),
              onTap: () => context.router.replaceNamed('/payment_list')),
        ],
      ),
    );
  }
}
