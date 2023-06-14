import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class FormDate extends StatelessWidget {
  final Function(DateTime date) onConfirm;
  final DateTime defaultValue;
  const FormDate({super.key, required this.onConfirm, required this.defaultValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: defaultValue.subtract(const Duration(days: 180)),
                      maxTime: defaultValue.add(const Duration(days: 180)),
                      onChanged: (date) {}, onConfirm: (date) {
                        onConfirm(date);
                      }, currentTime: defaultValue, locale: LocaleType.ru);
                },
                child: Text(
                  DateFormat("yyyy-MM-dd").format(defaultValue),
                  style: const TextStyle(color: Colors.blue),
                )))
      ],
    );
  }
}