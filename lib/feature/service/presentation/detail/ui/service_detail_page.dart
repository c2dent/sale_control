import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/text_clipboard.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/contract/presentation/detail/ui/contract_detail_page.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/presentation/create/ui/service_create_page.dart';
import 'package:hasap_admin/feature/service/presentation/detail/bloc/service_detail_bloc.dart';
import 'package:hasap_admin/feature/service/presentation/detail/bloc/service_detail_bloc_models.dart';
import 'package:hasap_admin/feature/service/presentation/helper.dart';

class ServiceDetailPage extends StatelessWidget {
  final ServiceTableData serviceTableData;

  const ServiceDetailPage({super.key, required this.serviceTableData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceDetailBloc>(
      create: (context) => GetIt.I.get()..add(ServiceDetailEvent.init(service: serviceTableData)),
      child: SrBlocBuilder<ServiceDetailBloc, ServiceDetailState, ServiceDetailSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          ServiceDetailBloc bloc = context.read<ServiceDetailBloc>();

          return Scaffold(
              appBar: AppBar(
                title: const Text("Hyzmat"),
                actions: [
                  if (state == const ServiceDetailState.empty())
                    Container()
                  else
                    IconButton(
                        onPressed: () async {
                          ServiceDetail service = state.data.serviceDetail;
                          bool? updatePayment = await Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ServiceCreatePage(service: ServiceData(service: service.service, creator: service.creator, client: service.client));
                          }));
                          if (updatePayment != null) bloc.add(const ServiceDetailEvent.update());
                        },
                        icon: const Icon(Icons.edit))
                ],
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ServiceDetailPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ServiceDetailSR sr) {
    sr.when(
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      errorNotify: (String text) => ErrorSnackbar.show(context: context, text: text),
    );
  }
}

class _ServiceDetailPage extends StatelessWidget {
  final ServiceDetailStateData state;

  const _ServiceDetailPage({required this.state});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ClientTableData client = state.data.serviceDetail.client;
    EmployeeTableData employee = state.data.serviceDetail.creator;
    ServiceTableData service = state.data.serviceDetail.service;
    final amountColor = getBgColorAmount(state.data.serviceDetail.getType, theme);

    Widget isSynced() {
      return service.isSynced ? Icon(Icons.check_circle, color: theme.colorScheme.primary) : Icon(Icons.close, color: theme.colorScheme.error);
    }

    Widget amountCard() {
      return Card(
        color: amountColor.$1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Text("${formatCurrency(service.amount)} тмт", style: TextStyle(color: amountColor.$2, fontWeight: FontWeight.bold))),
      );
    }

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Mushderi", style: theme.textTheme.bodyLarge),
                const SizedBox(width: 15),
                TextButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContractDetailPage(contractTableData: state.serviceDetail.contract)),
                        ),
                    child: const Text("Shertnama")),
              ],
            ),
            const SizedBox(height: 10),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                getTableRow("Ady", Text(client.firstName, style: theme.textTheme.labelLarge), theme),
                tableSizedBox(height: 7),
                getTableRow("Familiyasy", Text(client.lastName, style: theme.textTheme.labelLarge), theme),
                tableSizedBox(height: 7),
                getTableRow("Atasynyn ady", Text(client.surName ?? "-", style: theme.textTheme.labelLarge), theme),
                tableSizedBox(height: 7),
                getTableRow("Telefon nomeri", ClipboardText(text: "+993 ${client.phone}", value: "+993${client.phone}"), theme),
                tableSizedBox(height: 7),
                if (client.phone2 != null && client.phone2 != "") ...[
                  getTableRow("Telefon nomeri 2", ClipboardText(text: "+993 ${client.phone2}", value: "+993${client.phone2}"), theme),
                  tableSizedBox(height: 7),
                ],
                getTableRow("Yerleshyan yeri", Text(state.serviceDetail.regionName, style: theme.textTheme.labelLarge, overflow: TextOverflow.fade), theme,
                    withExpanded: true),
                tableSizedBox(height: 7),
                getTableRow("Beldik", Text(client.description ?? "-", style: theme.textTheme.labelLarge?.copyWith(fontStyle: FontStyle.italic)), theme,
                    withExpanded: true),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Text("Toleg", style: theme.textTheme.bodyLarge),
            const SizedBox(height: 10),
            Table(children: [
              getTableRow("Toleg wagty", Text(formattingDate(service.date), style: theme.textTheme.labelLarge), theme),
              tableSizedBox(height: 7),
              getTableRow("Ululygy", amountCard(), theme),
              tableSizedBox(height: 7),
              getTableRow("Gornushi", Text(state.data.serviceDetail.getType.name, style: theme.textTheme.labelLarge), theme),
              tableSizedBox(height: 7),
              getTableRow("Sinhronizlenen?", isSynced(), theme),
              tableSizedBox(height: 10),
              getTableRow("Beldik", Text(service.comment ?? "-", style: theme.textTheme.labelLarge?.copyWith(fontStyle: FontStyle.italic)), theme,
                  withExpanded: true),
              tableSizedBox(height: 10),
              getTableRow("Goshan", Text("${employee.firstName} ${employee.lastName}", style: theme.textTheme.labelLarge), theme, withExpanded: true),
            ]),
          ],
        ),
      ),
    );
  }
}
