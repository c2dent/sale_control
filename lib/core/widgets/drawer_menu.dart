import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.colorTheme.primary,
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FILTER", style: TextStyle(color: theme.colorTheme.onPrimary))
                ],
              )
          ),

          ListTile(leading: const Icon(Icons.contact_mail), title: const Text("Profile"), onTap: () => context.router.replaceNamed('/profile')),
          ListTile(leading: const Icon(Icons.shopping_cart), title: const Text("Müşderiler"), onTap: () => context.router.replaceNamed('/client_list')),
          ListTile(leading: const Icon(Icons.assignment), title: const Text("Şertnamalar"), onTap: () => context.router.replaceNamed('/contract_list')),
          ListTile(leading: const Icon(Icons.attach_money), title: const Text("Tölegler"), onTap: () => context.router.replaceNamed('/payment_list')),
          ListTile(leading: const Icon(Icons.room_service), title: const Text("Hyzmatlar"), onTap: () => context.router.replaceNamed('/service_list')),
          ListTile(leading: const Icon(Icons.reply), title: const Text("Gaÿtarmalar"), onTap: () => context.router.replaceNamed('/return_list'))
        ],
      ),
    );
  }
}
