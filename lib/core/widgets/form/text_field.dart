import 'package:flutter/material.dart';
import 'package:hasap_admin/core/widgets/utils.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool required;
  final int? maxLines;

  const AppTextField({super.key, required this.controller, required this.label, required this.required, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            isDense: true,
            labelText: label,
            border: const OutlineInputBorder(),
          ),
          controller: controller,
          maxLines: maxLines ?? 1,
          style: const TextStyle(fontSize: 19),
          validator: required ? textFieldRequired : null,
        ),
      ],
    );
  }
}
