import 'package:flutter/material.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/core/models/filter.dart';

class FilterScreen extends StatefulWidget {
  final List<Filter> filters;
  final Function reset;

  const FilterScreen({super.key, required this.filters, required this.reset});

  @override
  State<StatefulWidget> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);

    return Scaffold(
      appBar: AppBar(
         elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: theme.colorTheme.primary,
          iconSize: 30,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              for (var item in widget.filters)
                if (item.visible) Container(margin: const EdgeInsets.only(top: 10), child: item.filterWidget),

              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  widget.reset();
                  Navigator.pop(context);
                },
                child: const Text("Сброс"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
