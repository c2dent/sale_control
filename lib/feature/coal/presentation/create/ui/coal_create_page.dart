import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/form/date.dart';
import 'package:hasap_admin/core/widgets/form/select_contract_dropdown.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/feature/coal/data/coal_models.dart';
import 'package:hasap_admin/feature/coal/presentation/create/bloc/coal_create_bloc.dart';
import 'package:hasap_admin/feature/coal/presentation/create/bloc/coal_create_bloc_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';

@RoutePage()
class CoalCreatePage extends StatelessWidget {
  final Coal? coal;

  const CoalCreatePage({super.key, this.coal});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoalCreateBloc>(
        create: (context) => GetIt.I.get()..add(CoalCreateEvent.init(coal: coal)),
        child: SrBlocBuilder<CoalCreateBloc, CoalCreateState, CoalCreateSR>(
          onSR: _onSingleResult,
          builder: (_, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Kormur hyzmaty goshmak"),
              ),
              body:
                  state.map(empty: (_) => const Center(child: CircularProgressIndicator()), data: (state) => _CoalCreatePage(state: state)),
            );
          },
        ));
  }

  void _onSingleResult(BuildContext context, CoalCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: (contract) => Navigator.pop(context, contract),
    );
  }
}

class _CoalCreatePage extends StatelessWidget {
  final CoalCreateStateData state;

  const _CoalCreatePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CoalCreateBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: 400,
          child: Form(
            key: state.formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  FormDate(
                      defaultValue: state.data.date,
                      onConfirm: (date) {
                        bloc.add(CoalCreateEvent.selectDate(date: date));
                      }),
                  const SizedBox(height: 10),
                  SelectContractDropdown(
                    contract: state.contract,
                    onChange: (Contract? contract) => bloc.add(CoalCreateEvent.selectContractor(contract: contract)),
                    getContracts: () async => bloc.interactor.getContracts(),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (state.formKey.currentState!.validate()) {
                        if (state.coal != null) {
                          bloc.add(const CoalCreateEvent.update());
                        } else {
                          bloc.add(const CoalCreateEvent.create());
                        }
                      }
                    },
                    child: Text(state.contract != null ? "Uytget" : "Gosh"),
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
