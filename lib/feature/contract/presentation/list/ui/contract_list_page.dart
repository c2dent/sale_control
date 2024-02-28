import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_screen.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/presentation/create/ui/contract_create_page.dart';
import 'package:hasap_admin/feature/contract/presentation/detail/ui/contract_detail_page.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/list/bloc/contract_bloc_models.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/badge_button.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/helper.dart';
import 'package:hasap_admin/core/widgets/text_clipboard.dart';
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart';
import 'package:hasap_admin/feature/service/presentation/create/ui/service_create_page.dart';

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
          ThemeData theme = Theme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Şertnamalar"),
                actions: [
                  IconButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen(
                                      filters: state.data.filters,
                                      reset: () => bloc.add(const ContractEvent.resetFilter()),
                                    )),
                          ),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(index: 1),
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
                backgroundColor: theme.colorScheme.primary,
                child: Icon(
                  Icons.add_circle_outline,
                  color: theme.colorScheme.onPrimary,
                ),
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
      logout: () => context.router.replaceNamed('/login'),
    );
  }
}

class _ContractPage extends StatelessWidget {
  final ContractStateData state;

  const _ContractPage({required this.state});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<ContractBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.contracts.isEmpty) {
      return Column(
        children: [
          const SizedBox(height: 5),
          state.filters['search'] as Widget,
          Expanded(
            child: Center(
              child: Text(
                "Hic zat tapylmadyy",
                style: theme.textTheme.titleMedium,
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
          state.filters['search'] as Widget,
          const SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
                itemCount: state.data.contracts.length,
                itemBuilder: (BuildContext context, int index) {
                  ContractData contract = state.data.contracts[index];
                  (Color, Color) paymentColor = getPaymentColor(contract.contract, theme);

                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContractDetailPage(contractTableData: contract.contract)),
                    ),
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
                      elevation: 3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  contract.clientName,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                if (!contract.contract.isSynced) Icon(Icons.sync, color: theme.colorScheme.tertiary)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.phone, size: 17),
                                    const SizedBox(width: 5),
                                    ClipboardText(text: "+993 ${contract.client.phone}", value: '+993${contract.client.phone}'),
                                    const SizedBox(width: 5),
                                    if (contract.client.phone2 != null && contract.client.phone2 != "")
                                      ClipboardText(text: "+993 ${contract.client.phone2}", value: '+993${contract.client.phone2}'),
                                  ],
                                ),
                                Badge(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    textColor: paymentColor.$2,
                                    largeSize: 23,
                                    label: Text(getPaymentDate(contract.contract), style: theme.textTheme.titleMedium?.copyWith(color: paymentColor.$2)),
                                    backgroundColor: paymentColor.$1),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Toleg: ", style: theme.textTheme.bodyMedium),
                                Text("${formatCurrency(contract.contract.priceAmount)} тмт/ ${formatCurrency(contract.contract.paidAmount)} тмт",
                                    style: theme.textTheme.bodyMedium)
                              ],
                            ),
                            const SizedBox(height: 5),
                            LinearProgressIndicator(
                                minHeight: 6,
                                borderRadius: const BorderRadius.all(Radius.circular(3)),
                                value: contract.contract.paidAmount / contract.contract.priceAmount,
                                backgroundColor: Theme.of(context).colorScheme.error),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(contract.creatorName, style: theme.textTheme.bodySmall),
                                Text(
                                  formattingDateTime(contract.contract.setupDate),
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                            if (!contract.contract.closed)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  BadgeButton(
                                    onTap: () async => await Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PaymentCreatePage(contractTableData: contract.contract)),
                                    ),
                                    text: '+ Toleg',
                                  ),
                                  const SizedBox(width: 10),
                                  BadgeButton(
                                    onTap: () async => await Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServiceCreatePage(contractTableData: contract.contract)),
                                    ),
                                    text: '+ Hyzmat',
                                  ),
                                ],
                              ),
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
