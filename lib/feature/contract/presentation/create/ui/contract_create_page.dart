import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/widgets/form/select_client_dropdown.dart';
import 'package:hasap_admin/core/widgets/form/select_employee_dropdown.dart';
import 'package:hasap_admin/core/widgets/form/select_region_dropdown.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc_models.dart';

@RoutePage()
class ContractCreatePage extends StatelessWidget {
  final Contract? contract;

  const ContractCreatePage({super.key, this.contract});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContractCreateBloc>(
      create: (context) => GetIt.I.get()..add(ContractCreateEvent.init(contract: contract)),
      child: SrBlocBuilder<ContractCreateBloc, ContractCreateState, ContractCreateSR>(
        onSR: _onSingleResult,
        builder: (_, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Shertnama goshmak"),
            ),
            body: state.map(empty: (_) => const Center(child: CircularProgressIndicator()), data: (state) => _ContractCreatePage(state: state)),
          );
        },
      )
    );
  }

  void _onSingleResult(BuildContext context, ContractCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: (contract) => Navigator.pop(context, contract),
    );
  }
}

class _ContractCreatePage extends StatelessWidget {
  final ContractCreateStateData state;

  const _ContractCreatePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContractCreateBloc>();

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
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  SelectRegionDropdown(
                    onChange: (Region? region, List<Region?> regions) {
                      bloc.add(ContractCreateEvent.selectRegion(region: region, regions: regions));
                    },
                    regions: state.data.regions,
                    getRegions: (Region? region) => bloc.interactor.getRegions(region),
                  ),
                  const SizedBox(height: 10),

                  SelectClientDropdown(
                    client: state.client,
                    onChange: (Client? client) => bloc.add(ContractCreateEvent.selectClient(client: client)),
                    getClients: () async => bloc.interactor.getClients(),
                  ),
                  const SizedBox(height: 10),

                  SelectEmployeeDropdown(
                    onChange: (Employee? employee) => bloc.add(ContractCreateEvent.selectAdvertiser(employee: employee)),
                    employee: state.advertiser,
                    getEmployees: () async => bloc.interactor.getEmployees({}),
                  ),
                  const SizedBox(height: 10),

                  TextFormField(
                    controller: state.priceAmount,
                    decoration: const InputDecoration(
                      labelText: "Bahasy*",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Baha gorkezin";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  TextFormField(
                    controller: state.dueDateOnMonth,
                    decoration: const InputDecoration(
                      labelText: "ayky tolegi*",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "ayky tolegini gorkezin";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  TextFormField(
                    controller: state.startContribution,
                    decoration: const InputDecoration(
                      labelText: "Başlangych toleg*",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Başlangych tolegi gorkezin";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  TextFormField(
                    controller: state.monthCount,
                    decoration: const InputDecoration(
                      labelText: "Garashyk ayyn sany*",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Garashyk ayyn sanyny gorkezin";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  TextFormField(
                    controller: state.filterCount,
                    decoration: const InputDecoration(
                      labelText: "Filterin sany*",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Hokman gorkezmeli";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      if (state.formKey.currentState!.validate()) {
                        if (state.contract != null) {
                          bloc.add(const ContractCreateEvent.update());
                        } else {
                          bloc.add(const ContractCreateEvent.create());
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