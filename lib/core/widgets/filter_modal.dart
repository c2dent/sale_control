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
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                for (var item in widget.filters)
                  if (item.visible) Container(margin: const EdgeInsets.only(top: 10), child: item.filterWidget),
              ],
            ),
          ),
        ));
  }
}
