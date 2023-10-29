import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/form/date.dart';
import 'package:hasap_admin/core/widgets/form/select_contract_dropdown.dart';
import 'package:hasap_admin/core/widgets/form/text_field.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/feature/payment/data/payment_models.dart';
import 'package:hasap_admin/feature/payment/presentation/create/bloc/payment_create_bloc.dart';
import 'package:hasap_admin/feature/payment/presentation/create/bloc/payment_create_bloc_models.dart';

@RoutePage()
class PaymentCreatePage extends StatelessWidget {
  final Payment? payment;

  const PaymentCreatePage({Key? key, this.payment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PaymentCreateBloc>(
      create: (context) => GetIt.I.get()..add(PaymentCreateEvent.init(payment: payment)),
      child: SrBlocBuilder<PaymentCreateBloc, PaymentCreateState, PaymentCreateSR>(
        onSR: _onSingleResult,
        builder: (_, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Toleg goshmak"),
            ),
            body: state.map(
              empty: (_) => const Center(child: CircularProgressIndicator()),
              data: (state) => _PaymentCratePage(state: state),
            ),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, PaymentCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: (payment) => Navigator.pop(context, payment),
    );
  }
}

class _PaymentCratePage extends StatelessWidget {
  final PaymentCreateStateData state;

  const _PaymentCratePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PaymentCreateBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: 400,
          child: Form(
            key: state.data.formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                children: [
                  FormDate(
                      defaultValue: state.data.date,
                      onConfirm: (date) {
                        bloc.add(PaymentCreateEvent.selectDate(date: date));
                      }),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: state.amount,
                    label: "Toleg",
                    required: true,
                  ),
                  const SizedBox(height: 16),
                  SelectContractDropdown(
                    contract: state.data.contract,
                    onChange: (contract) {
                      bloc.add(PaymentCreateEvent.selectContract(contract: contract));
                    },
                    getContracts: () async {
                      return await bloc.paymentInteractor.getContracts();
                    },
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (state.data.formKey.currentState!.validate()) {
                        if (state.data.payment == null) {
                          bloc.add(const PaymentCreateEvent.create());
                        } else {
                          bloc.add(const PaymentCreateEvent.update());
                        }
                      }
                    },
                    child: Text(state.payment != null ? "Uytget" : "Gosh"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
