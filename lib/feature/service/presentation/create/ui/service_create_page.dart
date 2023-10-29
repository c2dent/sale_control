import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/c_dropdown_search.dart';
import 'package:hasap_admin/core/widgets/form/date.dart';
import 'package:hasap_admin/core/widgets/form/select_contract_dropdown.dart';
import 'package:hasap_admin/core/widgets/form/text_field.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/presentation/create/bloc/service_create_bloc.dart';
import 'package:hasap_admin/feature/service/presentation/create/bloc/service_create_bloc_models.dart';

@RoutePage()
class ServiceCreatePage extends StatelessWidget {
  final Service? service;

  const ServiceCreatePage({super.key, this.service});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceCreateBloc>(
        create: (context) => GetIt.I.get()..add(ServiceCreateEvent.init(service: service)),
        child: SrBlocBuilder<ServiceCreateBloc, ServiceCreateState, ServiceCreateSR>(
          onSR: _onSingleResult,
          builder: (_, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Hyzmaty goshmak"),
              ),
              body: state.map(empty: (_) => const Center(child: CircularProgressIndicator()), data: (state) => _CoalCreatePage(state: state)),
            );
          },
        ));
  }

  void _onSingleResult(BuildContext context, ServiceCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: (contract) => Navigator.pop(context, contract),
    );
  }
}

class _CoalCreatePage extends StatelessWidget {
  final ServiceCreateStateData state;

  const _CoalCreatePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ServiceCreateBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: 400,
          child: Form(
            key: state.formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                children: [
                  FormDate(
                      defaultValue: state.data.date,
                      onConfirm: (date) {
                        bloc.add(ServiceCreateEvent.selectDate(date: date));
                      }),
                  const SizedBox(height: 10),
                  SelectContractDropdown(
                    contract: state.contract,
                    onChange: (Contract? contract) => bloc.add(ServiceCreateEvent.selectContractor(contract: contract)),
                    getContracts: () async => bloc.interactor.getContracts(),
                  ),
                  const SizedBox(height: 10),

                  CDropDownSearch<ServiceType>(
                    label: "Hyzmat",
                    selectedItem: state.type,
                    itemAsString: (ServiceType type) => type.name,
                    onChanged: (ServiceType? type) => bloc.add(ServiceCreateEvent.selectType(type: type)),
                    validation: (ServiceType? type) {
                      if (type == null) return "Hokman saylamaly";
                      return null;
                    },
                    items: ServiceType.values,
                    compareFn: (item, sItem) => item.value == sItem.value,
                  ),
                  const SizedBox(height: 10),
                  AppTextField(
                    controller: state.amount,
                    label: "Toleg",
                    required: true,
                  ),
                  const SizedBox(height: 10),
                  AppTextField(
                    controller: state.comment,
                    label: "Beldik",
                    required: false,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () {
                      if (state.formKey.currentState!.validate()) {
                        if (state.service != null) {
                          bloc.add(const ServiceCreateEvent.update());
                        } else {
                          bloc.add(const ServiceCreateEvent.create());
                        }
                      }
                    },
                    child: Text(state.contract != null ? "Uytget" : "Gosh"),
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
