import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/core/models/debouncer.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';

class SearchByKeyboard extends StatelessWidget implements CustomFilterWidget<String> {
  final void Function() onChange;
  final TextEditingController textEditingController = TextEditingController();

  SearchByKeyboard({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);
    final debouncer = Debouncer(milliseconds: 700);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            filled: true,
            fillColor: theme.colorTheme.surface,
            hintText: 'Gozle',
            suffixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
            constraints: const BoxConstraints(maxHeight: 35)),
        onChanged: (string) {
          debouncer.run(() {
            onChange();
          });
        },
      ),
    );
  }

  @override
  String getName() => "search";

  @override
  getValue() => textEditingController.text;
}
