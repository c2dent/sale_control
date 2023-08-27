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
        clearButtonProps: ClearButtonProps(
          isVisible: true,
          color: Theme.of(context).primaryColor,
        ),
        popupProps: const PopupPropsMultiSelection.modalBottomSheet(
            showSelectedItems: true,
            showSearchBox: true
        ),
        validator: validation,
        compareFn: compareFn,
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            floatingLabelStyle: appTheme.textTheme.subtitle,
            border: InputBorder.none,
            isDense: true,
            contentPadding: const EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
            labelText: label,
            filled: true,
            fillColor: Theme.of(context).inputDecorationTheme.fillColor,
            constraints: const BoxConstraints(maxHeight: 42),
          ),
        ),
        onChanged: onChanged);
  }

}