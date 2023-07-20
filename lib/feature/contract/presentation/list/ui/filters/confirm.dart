import 'package:flutter/material.dart';
import 'package:hasap_admin/core/widgets/filter_widget.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';

class ConfirmCheckBox extends FilterWidget<bool> {
  final ContractBloc bloc;

  ConfirmCheckBox({
    super.key,
    required super.value,
    required super.onChange,
    required this.bloc,
    required super.values,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Tassyklanmadyklar: "),
        Checkbox(
            value: value,
            onChanged: (bool? v) {
              value = v;
              onChange(v);
              bloc.add(const ContractEvent.filter());
            }
        )
      ],
    );
  }
}