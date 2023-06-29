import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_modal.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
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

          return Scaffold(
            appBar: AppBar(
              title: const Text("Tolegler"),
              actions: [
                IconButton(
                    onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext newContext) => FilterModal(
                          reset: () => bloc.add(const PaymentEvent.resetFilter()),
                          filters: bloc.state.data.filters,
                        )),
                    icon: const Icon(Icons.filter_alt_rounded))
              ],
            ),
            drawer: const DrawerMenu(),
            body: state.map(
              empty: (_) => const Center(child: CircularProgressIndicator()),
              data: (state) => _PaymentPage(state: state),
            )
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, PaymentSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      showSuccessSnackbar: (String text) {  },
    );
  }
}

class _PaymentPage extends StatelessWidget {
  final PaymentStateData state;

  const _PaymentPage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);

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
              itemBuilder: (BuildContext context, int index){
                Payment payment = state.data.payments[index];
                Client client = payment.client;
                Contract contract = payment.contract;

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
                            Text("${payment.sum} TMT")
                          ],
                        )
                      ],
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