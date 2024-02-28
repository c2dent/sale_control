import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/presentation/create/ui/contract_create_page.dart';
import 'package:hasap_admin/feature/contract/presentation/detail/bloc/contract_detail_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/detail/bloc/contract_detail_bloc_models.dart';
import 'package:hasap_admin/feature/contract/presentation/detail/ui/helper.dart';
import 'package:hasap_admin/feature/contract/presentation/detail/ui/service_item.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/badge_button.dart';
import 'package:hasap_admin/feature/contract/presentation/list/ui/helper.dart';
import 'package:hasap_admin/core/widgets/text_clipboard.dart';
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart';
import 'package:hasap_admin/feature/service/presentation/create/ui/service_create_page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'payment_item.dart';

@RoutePage()
class ContractDetailPage extends StatelessWidget {
  final ContractTableData contractTableData;

  const ContractDetailPage({super.key, required this.contractTableData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContractDetailBloc>(
      create: (context) => GetIt.I.get()..add(ContractDetailEvent.init(contract: contractTableData)),
      child: SrBlocBuilder<ContractDetailBloc, ContractDetailState, ContractDetailSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          ThemeData theme = Theme.of(context);
          final bloc = context.read<ContractDetailBloc>();

          return Scaffold(
              appBar: AppBar(
                title: const Text("Shertnama"),
                actions: [
                  if (state == const ContractDetailState.empty())
                    Container()
                  else
                    IconButton(
                        onPressed: () async {
                          ContractDataDetail contract = state.data.contract;
                          bool? updateContract = await Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ContractCreatePage(contract: ContractData(contract: contract.contract, client: contract.client, creator: contract.creator));
                          }));
                          if (updateContract != null) bloc.add(const ContractDetailEvent.update());
                        },
                        icon: const Icon(Icons.edit))
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  ClientTableData client = state.data.contract.client;
                  String? phoneUrl;
                  if (client.phone2 != null) {
                    String? number = await selectPhoneNumber(context, client);
                    if (number != null) phoneUrl = "tel:+993$number";
                  } else {
                    phoneUrl = "tel:+993${client.phone}";
                  }

                  if (phoneUrl == null) return;
                  if (!await launchUrl(Uri.parse(phoneUrl))) {
                    bloc.addSr(const ContractDetailSR.errorNotify(text: "Jan edip bolmady"));
                  }
                },
                backgroundColor: theme.colorScheme.primary,
                child: Icon(
                  Icons.phone_outlined,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ContractDetailPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ContractDetailSR sr) {
    sr.when(
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      errorNotify: (String text) => ErrorSnackbar.show(context: context, text: text),
    );
  }
}

class _ContractDetailPage extends StatelessWidget {
  final ContractDetailStateData state;

  const _ContractDetailPage({required this.state});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ClientTableData client = state.contract.client;
    EmployeeTableData employee = state.contract.creator;
    ContractTableData contract = state.contract.contract;
    ContractReturnTableData? contractReturn = state.contract.contractReturn;
    List<PaymentTableData> payments = state.contract.payments;
    List<ServiceTableData> services = state.contract.services;

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    TableRow getTableRow(String name, Widget value, {bool? withExpanded}) {
      return TableRow(children: [
        TableCell(
          child: Text(name, style: theme.textTheme.titleMedium),
        ),
        TableCell(
            child: Row(
          children: [
            withExpanded != null ? Expanded(child: value) : value,
          ],
        ))
      ]);
    }

    Widget isClosed() {
      return contract.isSynced ? Icon(Icons.check_circle, color: theme.colorScheme.primary) : Icon(Icons.close, color: theme.colorScheme.error);
    }

    TableRow tableSizedBox({required double height}) {
      return TableRow(children: [TableCell(child: SizedBox(height: height)), TableCell(child: SizedBox(height: height))]);
    }

    Widget getNextPaymentDate(ContractTableData contract) {
      final paymentColor = getPaymentColor(contract, theme);

      return Badge(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          textColor: paymentColor.$2,
          largeSize: 23,
          label: Text(getPaymentDate(contract), style: theme.textTheme.titleMedium?.copyWith(color: paymentColor.$2)),
          backgroundColor: paymentColor.$1);
    }

    EmployeeTableData? getEmployeeById(String? id) {
      if (id == null) return null;
      for (var item in state.contract.employees) {
        if (item.id == id) return item;
      }
      return null;
    }

    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: double.infinity, child: Text("Mushderi", style: theme.textTheme.bodyLarge)),
              const SizedBox(height: 10),
              Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  getTableRow("Ady", Text(client.firstName, style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  getTableRow("Familiyasy", Text(client.lastName, style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  getTableRow("Atasynyn ady", Text(client.surName ?? "-", style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  getTableRow("Telefon nomeri", ClipboardText(text: "+993 ${client.phone}", value: "+993${client.phone}")),
                  tableSizedBox(height: 7),
                  if (client.phone2 != null && client.phone2 != "") ...[
                    getTableRow("Telefon nomeri 2", ClipboardText(text: "+993 ${client.phone2}", value: "+993${client.phone2}")),
                    tableSizedBox(height: 7),
                  ],
                  getTableRow("Yerleshyan yeri", Text(state.contract.regionName, style: theme.textTheme.labelLarge, overflow: TextOverflow.fade),
                      withExpanded: true),
                  tableSizedBox(height: 7),
                  getTableRow("Beldik", Text(client.description ?? "-", style: theme.textTheme.labelLarge), withExpanded: true),
                ],
              ),
              const Divider(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("Shertnama", style: theme.textTheme.bodyLarge),
                  const SizedBox(width: 10),
                  if (contract.closed) getNextPaymentDate(contract),
                ],
              ),
              const SizedBox(height: 10),
              Table(
                children: [
                  getTableRow("Gurnalan wagty", Text(formattingDate(contract.setupDate), style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  getTableRow("Satynlan baha", Text("${contract.priceAmount} тмт", style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  getTableRow("Tolenen", Text("${contract.paidAmount} тмт", style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  getTableRow("Garashyk ayyn sany", Text("${contract.monthCount} ay", style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  if (!contract.closed) ...[
                    getTableRow("Geljeki toleg wagty", getNextPaymentDate(contract)),
                    tableSizedBox(height: 7),
                  ],
                  getTableRow("Sinhronizlenen?", isClosed()),
                  tableSizedBox(height: 10),
                  getTableRow("Goshan", Text("${employee.firstName} ${employee.lastName}", style: theme.textTheme.labelLarge), withExpanded: true),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Text("${contract.paidAmount} тмт", style: theme.textTheme.labelLarge),
                    ],
                  ),
                  Row(
                    children: [
                      Text("${contract.priceAmount} тмт", style: theme.textTheme.labelLarge),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
              LinearProgressIndicator(
                  minHeight: 6,
                  borderRadius: const BorderRadius.all(Radius.circular(3)),
                  value: contract.paidAmount / contract.priceAmount,
                  backgroundColor: Theme.of(context).colorScheme.error),
              if (contractReturn != null) ...[
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Text("Yzyna alnan", style: theme.textTheme.bodyLarge),
                const SizedBox(height: 10),
                Table(children: [
                  getTableRow("Alnan wagty", Text(formattingDate(contractReturn.date), style: theme.textTheme.labelLarge)),
                  tableSizedBox(height: 7),
                  getTableRow("Sebap", Text(contractReturn.reason ?? "-", style: theme.textTheme.labelLarge), withExpanded: true),
                ]),
              ],
              const SizedBox(height: 20),
              if (!contract.closed)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BadgeButton(
                      onTap: () async => await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentCreatePage(contractTableData: state.contractTableData)),
                      ),
                      text: '+ Toleg',
                    ),
                    const SizedBox(width: 10),
                    BadgeButton(
                      onTap: () async => await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ServiceCreatePage(contractTableData: state.contractTableData)),
                      ),
                      text: '+ Hyzmat',
                    ),
                  ],
                ),
              const SizedBox(height: 30),
              SizedBox(
                height: 450,
                child: Column(
                  children: [
                    const TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.attach_money), text: "Tolegler"),
                        Tab(icon: Icon(Icons.room_service), text: "Hyzmatlar"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.builder(
                              itemCount: payments.length,
                              itemBuilder: (BuildContext context, int index) {
                                PaymentTableData payment = payments[index];
                                return PaymentItem(payment: payment, employee: getEmployeeById(payment.creatorId));
                              }),
                          ListView.builder(
                              itemCount: services.length,
                              itemBuilder: (BuildContext context, int index) {
                                ServiceTableData service = services[index];
                                return ServiceItem(service: service, employee: getEmployeeById(service.creatorId));
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
