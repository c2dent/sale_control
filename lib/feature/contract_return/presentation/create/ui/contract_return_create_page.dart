import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/form/date.dart';
import 'package:hasap_admin/core/widgets/form/select_contract_dropdown.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:hasap_admin/feature/contract_return/presentation/create/bloc/contract_return_bloc.dart';
import 'package:hasap_admin/feature/contract_return/presentation/create/bloc/contract_return_create_bloc_models.dart';

@RoutePage()
class ContractReturnCreatePage extends StatelessWidget {
  final ContractReturn? contractReturn;

  const ContractReturnCreatePage({Key? key, this.contractReturn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContractReturnCreateBloc>(
      create: (context) => GetIt.I.get()..add(ContractReturnCreateEvent.init(contractReturn: contractReturn)),
      child: SrBlocBuilder<ContractReturnCreateBloc, ContractReturnCreateState, ContractReturnCreateSR>(
        onSR: _onSingleResult,
        builder: (_, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Toleg goshmak"),
            ),
            body: state.map(
              empty: (_) => const Center(child: CircularProgressIndicator()),
              data: (state) => _ContractReturnCreatePage(state: state),
            ),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ContractReturnCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: (contractReturn) => Navigator.pop(context, contractReturn),
    );
  }
}

class _ContractReturnCreatePage extends StatelessWidget {
  final ContractReturnCreateStateData state;

  const _ContractReturnCreatePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContractReturnCreateBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: 400,
          child: Form(
            key: state.data.formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  FormDate(
                      defaultValue: state.data.date,
                      onConfirm: (date) {
                        bloc.add(ContractReturnCreateEvent.selectDate(date: date));
                      }),
                  const SizedBox(height: 16),
                  SelectContractDropdown(
                    contract: state.data.contract,
                    onChange: (contract) {
                      bloc.add(ContractReturnCreateEvent.selectContract(contract: contract));
                    },
                    getContracts: () async {
                      return await bloc.interactor.getContracts();
                    },
                  ),
                  TextFormField(
                    controller: state.data.reason,
                    decoration: const InputDecoration(labelText: "Sebabi"),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (state.data.formKey.currentState!.validate()) {
                        if (state.data.contractReturn == null) {
                          bloc.add(const ContractReturnCreateEvent.create());
                        } else {
                          bloc.add(const ContractReturnCreateEvent.update());
                        }
                      }
                    },
                    child: Text(state.contractReturn != null ? "Uytget" : "Gosh"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
