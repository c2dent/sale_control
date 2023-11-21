import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_screen.dart';
import 'package:hasap_admin/core/widgets/line_progress.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/presentation/create/ui/contract_create_page.dart';
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
          AppTheme theme = AppTheme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Şertnamalar"),
                actions: [
                  IconButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen(
                                      filters: bloc.state.data.filters,
                                      reset: () => bloc.add(const ContractEvent.resetFilter()),
                                    )),
                          ),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  bool? contract = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContractCreatePage()),
                  );

                  if (contract != null) {
                    bloc.add(const ContractEvent.filter());
                  }
                },
                backgroundColor: theme.colorTheme.primary,
                child: const Icon(Icons.add_circle_outline),
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ContractPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ContractSR sr) {
    final bloc = context.read<ContractBloc>();

    sr.when(
      showDioError: (error, notifier) => ErrorSnackbar.show(context: context, text: error.safeCustom!.error),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      delete: (client) => bloc.add(const ContractEvent.filter()),
    );
  }
}

class _ContractPage extends StatelessWidget {
  final ContractStateData state;

  const _ContractPage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<ContractBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.contracts.isEmpty) {
      return Column(
        children: [
          // state.data.filters[3].filterWidget,
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
                  ContractData contract = state.data.contracts[index];

                  return GestureDetector(
                    onLongPress: () => showContextMenu(context, tapPosition, edit: () async {
                      bool? updateContract = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContractCreatePage(contract: contract)),
                      );

                      if (updateContract != null) {
                        bloc.add(const ContractEvent.filter());
                      }
                    }), // bloc.add(ContractEvent.delete(contract: ))
                    onTapDown: ((details) {
                      tapPosition = Offset(details.globalPosition.dx, details.globalPosition.dy);
                    }),
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [contract.contract.closed ? Colors.green.shade100 : Colors.red.shade100, Colors.white], // Цвета градиента
                            begin: Alignment.topCenter, // Начальная точка градиента
                            end: Alignment.bottomCenter, // Конечная точка градиента
                            stops: const [0.0, 0.2], // Остановки для цветов градиента (можно настроить по желанию)
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  contract.clientName,
                                  style: theme.textTheme.title1.copyWith(color: theme.colorTheme.textPrimary, fontSize: 20),
                                ),
                                if (!contract.contract.isSynced) const Icon(Icons.sync, color: Colors.blueAccent)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(Icons.phone, size: 17),
                                const SizedBox(width: 10),
                                Text( "+993 ${contract.client.phone}", style: theme.textTheme.title2),
                                const SizedBox(width: 10),
                                Text(contract.client.phone2 ?? ""),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Toleg: ", style: theme.textTheme.title2),
                                Text("${formatCurrency(contract.contract.priceAmount)} тмт/ ${formatCurrency(contract.contract.paidAmount)} тмт",
                                    style: theme.textTheme.title2)
                              ],
                            ),
                            const SizedBox(height: 5),
                            CustomProgressBar(progress: contract.contract.paidAmount / contract.contract.priceAmount),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(contract.creatorName, style: theme.textTheme.title2),
                                Text(
                                  formattingDate(contract.contract.setupDate),
                                  style: theme.textTheme.subtitle.copyWith(color: theme.colorTheme.textSecondary),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
