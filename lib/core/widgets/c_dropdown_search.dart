import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';

class CDropDownSearch<T> extends StatelessWidget {
  final String label;
  final T? selectedItem;
  final String Function(T)? itemAsString;
  final Future<List<T>> Function(String)? asyncItems;
  final void Function(T?)? onChanged;
  final bool Function(T, T)? compareFn;
  final String? Function(T? t)? validation;
  final List<T>? items;

  const CDropDownSearch({
    required this.label,
    this.asyncItems,
    this.selectedItem,
    this.itemAsString,
    this.onChanged,
    this.compareFn,
    this.validation,
    this.items,
    super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);

    return DropdownSearch<T>(
        asyncItems: asyncItems,
        items: items ?? [],
        selectedItem: selectedItem,
        itemAsString: itemAsString,
        popupProps: const PopupPropsMultiSelection.modalBottomSheet(
            showSelectedItems: true,
            showSearchBox: true
        ),
        validator: validation,
        compareFn: compareFn,
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(7)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            suffixIcon: Icon(Icons.search),
          ),
          baseStyle: const TextStyle(fontSize: 19),
        ),
        onChanged: onChanged);
  }

}