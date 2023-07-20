import 'package:hasap_admin/core/widgets/filter_widget.dart';

class Filter<T> {
  String parameterName;
  T? value;
  bool visible = true;
  late FilterWidget<T> filterWidget;
  final String Function(T value) parameterValue;

  void clear() {
    value = null;
    filterWidget.clear();
  }

  void setValue(T? value) {
    value = value;
  }

  Filter({required this.parameterName, this.value, required FilterWidget<T> widget, required this.parameterValue, this.visible = true}) {
    widget.value = this.value;
    widget.onChange = setValue;
    this.filterWidget = widget;
  }
}
