import 'package:flutter/material.dart';

class DrawerItem {
  const DrawerItem({required this.label, required this.icon, required this.selectedIcon, required this.pathRoute});

  final String label;
  final String pathRoute;
  final Widget icon;
  final Widget selectedIcon;
}
