import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/drawer_item.dart';

class DrawerMenu extends StatefulWidget {
  final int index;

  const DrawerMenu({Key? key, required this.index}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    screenIndex = widget.index;

    List<DrawerItem> items = [
      const DrawerItem(label: 'Profile', icon: Icon(Icons.contact_mail_outlined), selectedIcon: Icon(Icons.contact_mail), pathRoute: '/profile'),
      const DrawerItem(label: 'Şertnamalar', icon: Icon(Icons.assignment_outlined), selectedIcon: Icon(Icons.assignment), pathRoute: '/contract_list'),
      const DrawerItem(label: 'Tölegler', icon: Icon(Icons.attach_money_outlined), selectedIcon: Icon(Icons.attach_money), pathRoute: '/payment_list'),
      const DrawerItem(label: 'Hyzmatlar', icon: Icon(Icons.room_service_outlined), selectedIcon: Icon(Icons.room_service), pathRoute: '/service_list'),
      const DrawerItem(label: 'Yzyna alnan', icon: Icon(Icons.reply_outlined), selectedIcon: Icon(Icons.reply), pathRoute: '/return_list'),
    ];

    void handleScreenChanged(int selectedScreen) {
      setState(() {
        screenIndex = selectedScreen;
        context.router.replaceNamed(items[selectedScreen].pathRoute);
      });
    }

    return NavigationDrawer(
      onDestinationSelected: handleScreenChanged,
      selectedIndex: screenIndex,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            'Menu',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...items.map((item) => NavigationDrawerDestination(
              icon: item.icon,
              label: Text(item.label),
              selectedIcon: item.selectedIcon,
            )),
      ],
    );
  }
}
