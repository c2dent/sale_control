import 'package:flutter/material.dart';
import 'package:hasap_admin/core/models/filter.dart';

class FilterModal extends StatefulWidget {
  final List<Filter> filters;
  final Function reset;
  const FilterModal({super.key, required this.filters, required this.reset});

  @override
  State<StatefulWidget> createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Закрыть"),
          ),
          TextButton(
            onPressed: () {
              widget.reset();
              Navigator.pop(context);
            },
            child: const Text("Сброс"),
          ),
        ],
        content: SingleChildScrollView(
          child: SizedBox(
              width: 400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (var item in widget.filters) Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: item.filterWidget
                  ),
                ],
              )
          ),
        ));
  }
}
