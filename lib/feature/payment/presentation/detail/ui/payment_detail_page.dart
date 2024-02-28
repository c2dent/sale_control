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
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart';
import 'package:hasap_admin/feature/payment/presentation/detail/bloc/payment_detail_bloc.dart';
import 'package:hasap_admin/feature/payment/presentation/detail/bloc/payment_detail_bloc_models.dart';

class PaymentDetailPage extends StatelessWidget {
  final PaymentTableData paymentTableData;

  const PaymentDetailPage({super.key, required this.paymentTableData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PaymentDetailBloc>(
      create: (context) => GetIt.I.get()..add(PaymentDetailEvent.init(payment: paymentTableData)),
      child: SrBlocBuilder<PaymentDetailBloc, PaymentDetailState, PaymentDetailSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          PaymentDetailBloc bloc = context.read<PaymentDetailBloc>();

          return Scaffold(
              appBar: AppBar(
                title: const Text("Toleg"),
                actions: [
                  if (state == const PaymentDetailState.empty())
                    Container()
                  else
                    IconButton(
                        onPressed: () async {
                          PaymentDetail payment = state.data.paymentDetail;
                          bool? updatePayment = await Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return PaymentCreatePage(
                                payment: PaymentData(payment: payment.payment, client: payment.client, creator: payment.creator, region: payment.region));
                          }));
                          if (updatePayment != null) bloc.add(const PaymentDetailEvent.update());
                        },
                        icon: const Icon(Icons.edit))
                ],
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _PaymentDetailPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, PaymentDetailSR sr) {
    sr.when(
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      errorNotify: (String text) => ErrorSnackbar.show(context: context, text: text),
    );
  }
}

class _PaymentDetailPage extends StatelessWidget {
  final PaymentDetailStateData state;

  const _PaymentDetailPage({required this.state});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ClientTableData client = state.data.paymentDetail.client;
    PaymentTableData payment = state.data.paymentDetail.payment;
    EmployeeTableData employee = state.data.paymentDetail.creator;

    Widget isSynced() {
      return payment.isSynced ? Icon(Icons.check_circle, color: theme.colorScheme.primary) : Icon(Icons.close, color: theme.colorScheme.error);
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
                          MaterialPageRoute(builder: (context) => ContractDetailPage(contractTableData: state.paymentDetail.contract)),
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
                getTableRow("Yerleshyan yeri", Text(state.paymentDetail.regionName, style: theme.textTheme.labelLarge, overflow: TextOverflow.fade), theme,
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
              getTableRow("Toleg wagty", Text(formattingDate(payment.date), style: theme.textTheme.labelLarge), theme),
              tableSizedBox(height: 7),
              getTableRow("Ululygy", Text("${payment.paidAmount} тмт", style: theme.textTheme.labelLarge), theme),
              tableSizedBox(height: 7),
              getTableRow("Sinhronizlenen?", isSynced(), theme),
              tableSizedBox(height: 10),
              getTableRow("Beldik", Text(payment.comment ?? "-", style: theme.textTheme.labelLarge?.copyWith(fontStyle: FontStyle.italic)), theme,
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
