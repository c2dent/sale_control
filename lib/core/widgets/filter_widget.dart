import 'package:flutter/material.dart';

class FilterWidget<T> extends StatelessWidget {
  T? value;
  List<T?> values;
  void Function(T? value) onChange;

  FilterWidget({required this.value, required this.onChange, required this.values, super.key});

  void clear() {}

  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}

abstract class CustomFilterWidget<T> {
  String getName();

  T getValue();
}
