import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/core/models/type_wrapper.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';

class SelectSort extends StatefulWidget implements CustomFilterWidget<String> {
  final void Function() onChange;
  final WrapperType<String> _value = WrapperType(ContractSortType.createDate.value);

  SelectSort({super.key, required this.onChange});

  @override
  State<SelectSort> createState() => _SelectSortState();

  @override
  String getName() => "sort";

  @override
  String getValue() => _value.get();
}

class _SelectSortState extends State<SelectSort> {
  String value = "";

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme.of(context);

    setState(() {
      value = widget._value.get();
    });

    return DropdownMenu<String>(
      expandedInsets: EdgeInsets.zero,
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        contentPadding: EdgeInsets.only(left: 8),
        border: OutlineInputBorder(),
      ),
      label: const Text("Yzygiderlik"),
      initialSelection: value,
      onSelected: (item) {
        widget._value.set(item!);
        widget.onChange();
        setState(() {
          value = item;
        });
      },
      dropdownMenuEntries: getItems(appTheme),
    );
  }

  List<DropdownMenuEntry<String>> getItems(AppTheme theme) {
    List<DropdownMenuEntry<String>> items = [];
    for (ContractSortType item in ContractSortType.values) {
      items.add(DropdownMenuEntry<String>(value: item.value, label: item.name));
    }
    return items;
  }
}
