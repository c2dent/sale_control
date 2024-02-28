import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_screen.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/text_clipboard.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart';
import 'package:hasap_admin/feature/payment/presentation/detail/ui/payment_detail_page.dart';
import 'package:hasap_admin/feature/payment/presentation/list/bloc/payment_bloc.dart';
import 'package:hasap_admin/feature/payment/presentation/list/bloc/payment_bloc_models.dart';

@RoutePage()
class PaymentListPage extends StatelessWidget {
  const PaymentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PaymentBloc>(
      create: (context) => GetIt.I.get()..add(const PaymentEvent.init()),
      child: SrBlocBuilder<PaymentBloc, PaymentState, PaymentSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<PaymentBloc>();
          ThemeData theme = Theme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Tölegler"),
                actions: [
                  IconButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen(
                                      filters: const {},
                                      reset: () => bloc.add(const PaymentEvent.resetFilter()),
                                    )),
                          ),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(index: 2),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  bool? payment = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentCreatePage()),
                  );

                  if (payment != null) {
                    bloc.add(const PaymentEvent.filter());
                  }
                },
                backgroundColor: theme.colorScheme.primary,
                child: Icon(Icons.add_circle_outline, color: theme.colorScheme.onPrimary),
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _PaymentPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, PaymentSR sr) {
    final bloc = context.read<PaymentBloc>();

    sr.when(
      showDioError: (error, notifier) => ErrorSnackbar.show(context: context, text: error.safeCustom!.error),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      delete: (client) => bloc.add(const PaymentEvent.filter()),
    );
  }
}

class _PaymentPage extends StatelessWidget {
  final PaymentStateData state;

  const _PaymentPage({required this.state});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<PaymentBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.payments.isEmpty) {
      return Center(
        child: Text(
          "Hic zat tapylmadyy",
          style: theme.textTheme.bodyLarge,
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
              itemCount: state.data.payments.length,
              itemBuilder: (BuildContext context, int index) {
                PaymentData payment = state.data.payments[index];
                ClientTableData client = payment.client;

                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentDetailPage(paymentTableData: payment.payment)),
                  ),
                  onLongPress: () => showContextMenu(context, tapPosition,
                      edit: () async {
                        bool? updatedPayment = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaymentCreatePage(payment: payment)),
                        );

                        if (updatedPayment != null) {
                          bloc.add(const PaymentEvent.filter());
                        }
                      },
                      delete: () => bloc.add(PaymentEvent.delete(payment: payment))),
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
                                payment.clientName,
                                style: theme.textTheme.bodyLarge,
                              ),
                              if (!payment.payment.isSynced) const Icon(Icons.sync, color: Colors.blueAccent)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.phone, size: 17),
                                  const SizedBox(width: 5),
                                  ClipboardText(text: "+993 ${client.phone}", value: '+993${client.phone}'),
                                  const SizedBox(width: 5),
                                  if (client.phone2 != null && client.phone2 != "") ClipboardText(text: "+993 ${client.phone2}", value: '+993${client.phone2}'),
                                ],
                              ),
                              Card(
                                color: theme.colorScheme.primary,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    child: Text("${formatCurrency(payment.payment.paidAmount)} тмт",
                                        style: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold))),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              const SizedBox(width: 5),
                              Text(payment.region.name, style: theme.textTheme.titleMedium),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  payment.creatorName,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              Text(
                                formattingDateTime(payment.payment.createdAt),
                                style: theme.textTheme.bodyMedium,
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
