import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_modal.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';

@RoutePage()
class ContractListPage extends StatelessWidget {
  const ContractListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContractBloc>(
      create: (context) => GetIt.I.get()..add(const ContractEvent.init()),
      child: SrBlocBuilder<ContractBloc, ContractState, ContractSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<ContractBloc>();

          return Scaffold(
              appBar: AppBar(
                title: const Text("Contractlar"),
                actions: [
                  IconButton(
                      onPressed: () => showDialog(
                          context: context,
                          builder: (BuildContext newContext) => FilterModal(
                            reset: () => bloc.add(const ContractEvent.resetFilter()),
                            filters: bloc.state.data.filters,
                          )),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ContractPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ContractSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
    );
  }
}

class _ContractPage extends StatelessWidget {
  final ContractStateData state;

  const _ContractPage({required this.state, Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.contracts.isEmpty) {
      return Column(
        children: [
          state.data.filters[3].filterWidget,
          Expanded(
            child: Center(
              child: Text(
                "Hic zat tapylmadyy",
                style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary),
              ),
            ),
          ),
        ],
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(horizontal: 6.0),

      child: Column(
        children: [
          const SizedBox(height: 5),

          Expanded(
            child: ListView.builder(
              itemCount: state.data.contracts.length,
              itemBuilder: (BuildContext context, int index) {
                Contract contract = state.data.contracts[index];
                Client client = contract.client;

                return Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${client.firstName} ${client.lastName}",
                              style: theme.textTheme.title1.copyWith(color: theme.colorTheme.textPrimary),
                            ),
                            if (contract.isConfirm)
                              Icon(Icons.check_circle, color: theme.colorTheme.success)
                            else
                              Icon(Icons.cancel, color: theme.colorTheme.error)
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Galan ay: ${contract.remainingMonths}", style: theme.textTheme.title2),
                            Text("Umumyy ay: ${contract.dueDateOnMonth}", style: theme.textTheme.title2),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Galan toleg: ${contract.sumContract}", style: theme.textTheme.title2),
                            Text("Umumyy toleg: ${contract.remainingSum}", style: theme.textTheme.title2)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${contract.taskMaster.firstName} ${contract.taskMaster.lastName}", style: theme.textTheme.title2),
                            Text(
                              formattingDate(contract.createdAt),
                              style: theme.textTheme.subtitle.copyWith(color: theme.colorTheme.textSecondary),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }

}