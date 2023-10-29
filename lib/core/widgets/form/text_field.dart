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
        Text("$label:", style: const TextStyle(fontSize: 19), textAlign: TextAlign.start),
        const SizedBox(height: 3),
        TextFormField(
            controller: controller,
            maxLines: maxLines ?? 1,
            decoration: InputDecoration(
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(7)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            ),
            style: const TextStyle(fontSize: 19),
          validator: required ? textFieldRequired : null,
        ),
      ],
    );
  }
}
