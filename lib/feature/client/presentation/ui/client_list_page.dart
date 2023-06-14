import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ClientListPage extends StatelessWidget {
  const ClientListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Клиенты", style: TextStyle(color: Colors.white)),
      ),
      body: const Center(
        child: Text("ClientListPage"),
      ),
    );
  }

}