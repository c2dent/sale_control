
import 'package:flutter/material.dart';

class FilterWidget<T> extends StatelessWidget {
  T? value;
  void Function(T? value) onChange;

  FilterWidget({
    required this.value,
    required this.onChange,
    super.key});

  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}