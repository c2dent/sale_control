import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_screen.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart';
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
          AppTheme theme = AppTheme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Tölegler"),
                actions: [
                  IconButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen(
                                      filters: bloc.state.data.filters,
                                      reset: () => bloc.add(const PaymentEvent.resetFilter()),
                                    )),
                          ),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  Payment? payment = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentCreatePage()),
                  );

                  if (payment != null) {
                    bloc.add(const PaymentEvent.filter());
                  }
                },
                backgroundColor: theme.colorTheme.primary,
                child: const Icon(Icons.add_circle_outline),
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
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      delete: (client) => bloc.add(const PaymentEvent.filter()),
    );
  }
}

class _PaymentPage extends StatelessWidget {
  final PaymentStateData state;

  const _PaymentPage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<PaymentBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.payments.isEmpty) {
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
              itemCount: state.data.payments.length,
              itemBuilder: (BuildContext context, int index) {
                Payment payment = state.data.payments[index];
                Client client = payment.contract.client;

                return GestureDetector(
                  onLongPress: () => showContextMenu(context, tapPosition,
                      edit: () async {
                        Payment? updatedPayment = await Navigator.push(
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
                                "${client.firstName} ${client.lastName}",
                                style: theme.textTheme.title1.copyWith(color: theme.colorTheme.textPrimary, fontSize: 20),
                              ),
                              Card(
                                color: theme.colorTheme.error.withOpacity(0.7),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    child: Text("${formatCurrency(payment.amount)} тмт",
                                        style: TextStyle(color: theme.colorTheme.onSuccess, fontWeight: FontWeight.bold))),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "${payment.creator.firstName ?? ''} ${client.creator.lastName ?? ''}",
                                  style: theme.textTheme.title2,
                                ),
                              ),
                              Text(
                                formattingDate(payment.createdAt),
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
