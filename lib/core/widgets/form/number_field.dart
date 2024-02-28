import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hasap_admin/core/widgets/utils.dart';

class AppNumberField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool required;
  final Widget? prefix;

  const AppNumberField({super.key, required this.controller, required this.label, required this.required, this.prefix});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefix: prefix,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            isDense: true,
            labelText: label,
            border: const OutlineInputBorder(),
          ),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          style: const TextStyle(fontSize: 19),
          validator: required ? textFieldRequired : null,
        ),
      ],
    );
  }
}
