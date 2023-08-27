import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_modal.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart';
import 'package:hasap_admin/feature/contract_return/presentation/create/ui/contract_return_create_page.dart';
import 'package:hasap_admin/feature/contract_return/presentation/list/bloc/contract_return_bloc.dart';
import 'package:hasap_admin/feature/contract_return/presentation/list/bloc/contract_return_bloc_models.dart';

@RoutePage()
class ContractReturnListPage extends StatelessWidget {
  const ContractReturnListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContractReturnBloc>(
      create: (context) => GetIt.I.get()..add(const ContractReturnEvent.init()),
      child: SrBlocBuilder<ContractReturnBloc, ContractReturnState, ContractReturnSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<ContractReturnBloc>();
          AppTheme theme = AppTheme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Возврать"),
                actions: [
                  IconButton(
                      onPressed: () => showDialog(
                          context: context,
                          builder: (BuildContext newContext) => FilterModal(
                                reset: () => bloc.add(const ContractReturnEvent.resetFilter()),
                                filters: bloc.state.data.filters,
                              )),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  ContractReturn? contractReturn = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContractReturnCreatePage()),
                  );

                  if (contractReturn != null) {
                    bloc.add(const ContractReturnEvent.filter());
                  }
                },
                backgroundColor: theme.colorTheme.primary,
                child: const Icon(Icons.add_circle_outline),
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ContractReturnPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ContractReturnSR sr) {
    final bloc = context.read<ContractReturnBloc>();

    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      delete: (client) => bloc.add(const ContractReturnEvent.filter()),
    );
  }
}

class _ContractReturnPage extends StatelessWidget {
  final ContractReturnStateData state;

  const _ContractReturnPage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<ContractReturnBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.contractReturns.isEmpty) {
      return Center(
        child: Text(
          "Hic zat tapylmadyy",
          style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary),
        ),
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
              itemCount: state.data.contractReturns.length,
              itemBuilder: (BuildContext context, int index) {
                ContractReturn contractReturn = state.data.contractReturns[index];
                Contract contract = contractReturn.contract;
                Client client = contractReturn.contract.client;

                return GestureDetector(
                  onLongPress: () => showContextMenu(context, tapPosition,
                      edit: () async {
                        ContractReturn? updateContractReturn = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContractReturnCreatePage(contractReturn: contractReturn)),
                        );

                        if (updateContractReturn != null) {
                          bloc.add(const ContractReturnEvent.filter());
                        }
                      },
                      delete: () => bloc.add(ContractReturnEvent.delete(contractReturn: contractReturn))),
                  onTapDown: ((details) {
                    tapPosition = Offset(details.globalPosition.dx, details.globalPosition.dy);
                  }),
                  child: Card(
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
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Toleg: ", style: theme.textTheme.title2),
                              Text("${formatCurrency(contract.priceAmount)} тмт/ ${formatCurrency(contract.paidAmount)} тмт", style: theme.textTheme.title2)
                            ],
                          ),
                          Row(
                            children: [Text(contractReturn.reason ?? "", style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textPrimary))],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "${contractReturn.creator.firstName ?? ''} ${client.creator.lastName ?? ''}",
                                  style: theme.textTheme.title2,
                                ),
                              ),
                              Text(
                                formattingDate(contractReturn.date),
                                style: theme.textTheme.subtitle.copyWith(color: theme.colorTheme.textSecondary),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
