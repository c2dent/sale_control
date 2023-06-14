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
              title: const Text("Операции"),
              onTap: () => context.router.replaceNamed('/operations')),
          ListTile(
              title: const Text("Статистика"),
              onTap: () => context.router.replaceNamed('/statistic')),
          ListTile(
              title: const Text("Баланс"),
              onTap: () => context.router.replaceNamed('/balance')),
          ListTile(
              title: const Text("Бюджеты"),
              onTap: () => context.router.replaceNamed('/budgets')),
          ListTile(
              title: const Text("ОПиУ (P&L)"),
              onTap: () => context.router.replaceNamed('/pnl')),
          ListTile(
              title: const Text("ДДС (Cashflow)"),
              onTap: () => context.router.replaceNamed('/dds')),
          ExpansionTile(
            title: const Text("Сущности"),
            children: [
              ListTile(
                  title: const Text("Категории"),
                  onTap: () => context.router.replaceNamed('/categories')),
              ListTile(
                  title: const Text("Счета"),
                  onTap: () => context.router.replaceNamed('/accounts')),
              ListTile(
                  title: const Text("Держатели счетов"),
                  onTap: () => context.router.replaceNamed('/holders')),
              ListTile(
                  title: const Text("Системы оплаты"),
                  onTap: () => context.router.replaceNamed('/systems')),
              ListTile(
                  title: const Text("Контрагенты"),
                  onTap: () => context.router.replaceNamed('/contractors')),
              ListTile(
                  title: const Text("Круги"),
                  onTap: () => context.router.replaceNamed('/cycles')),
              ListTile(
                  title: const Text("Валюты"),
                  onTap: () => context.router.replaceNamed('/currencies')),
              ListTile(
                  title: const Text("Курсы"),
                  onTap: () => context.router.replaceNamed('/rates')),
            ],
          ),
        ],
      ),
    );
  }
}
