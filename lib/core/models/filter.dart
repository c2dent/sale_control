
import 'package:flutter/material.dart';

class Filter<T> {
  String parameterName;
  T parameterValue;
  Widget widget;

  Filter({
    required this.parameterName,
    required this.parameterValue,
    required this.widget,
  });
}