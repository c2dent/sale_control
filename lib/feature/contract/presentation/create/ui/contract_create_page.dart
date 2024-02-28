import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/form/date.dart';
import 'package:hasap_admin/core/widgets/form/number_field.dart';
import 'package:hasap_admin/core/widgets/form/select_employee_dropdown.dart';
import 'package:hasap_admin/core/widgets/form/select_region_dropdown.dart';
import 'package:hasap_admin/core/widgets/form/text_field.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/feature/contract/data/contract_models.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc_models.dart';

@RoutePage()
class ContractCreatePage extends StatelessWidget {
  final ContractData? contract;

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
        ));
  }

  void _onSingleResult(BuildContext context, ContractCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => ErrorSnackbar.show(context: context, text: error.safeCustom!.error),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: () => Navigator.pop(context, true),
    );
  }
}

class _ContractCreatePage extends StatelessWidget {
  final ContractCreateStateData state;

  const _ContractCreatePage({required this.state});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContractCreateBloc>();
    ThemeData theme = Theme.of(context);

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
                  AppTextField(
                    controller: state.firstName,
                    label: "Ady",
                    required: true,
                  ),
                  const SizedBox(height: 18),
                  AppTextField(
                    controller: state.lastName,
                    label: "Familiyasy",
                    required: true,
                  ),
                  const SizedBox(height: 10),
                  SelectRegionDropdown(
                    onChange: (Region? region, List<Region?> regions) {
                      bloc.add(ContractCreateEvent.selectRegion(region: region, regions: regions));
                    },
                    regions: state.data.regions,
                    getRegions: bloc.interactor.getRegions,
                  ),
                  const SizedBox(height: 10),
                  AppTextField(
                    controller: state.description,
                    label: "Beldik goshmacha",
                    required: false,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 10),
                  AppNumberField(
                    prefix: const Text("+993 "),
                    controller: state.phone,
                    label: "Nomer belgisi",
                    required: true,
                  ),
                  const SizedBox(height: 10),
                  AppNumberField(
                    prefix: const Text("+993 "),
                    controller: state.phone2,
                    label: "Nomer belgisi 2",
                    required: false,
                  ),
                  const SizedBox(height: 10),
                  SelectEmployeeDropdown(
                    onChange: (EmployeeTableData? employee) => bloc.add(ContractCreateEvent.selectAdvertiser(employee: employee)),
                    employee: state.advertiser,
                    employees: state.employees,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Gurnalan wagty: ", style: theme.textTheme.bodyLarge),
                      const SizedBox(width: 15),
                      Expanded(
                        child: FormDate(
                            defaultValue: state.data.setupDate,
                            onConfirm: (date) {
                              bloc.add(ContractCreateEvent.selectDate(date: date));
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  if (state.data.contract != null) ...[
                    Row(
                      children: [
                        Text("Geljekki toleg wagty: ", style: theme.textTheme.bodyLarge),
                        const SizedBox(width: 15),
                        Expanded(
                          child: FormDate(
                              defaultValue: state.data.nextPaymentDate,
                              onConfirm: (date) {
                                bloc.add(ContractCreateEvent.selectNextPaymentDate(date: date));
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                  AppNumberField(
                    controller: state.priceAmount,
                    label: "Bahasy",
                    required: true,
                  ),
                  const SizedBox(height: 10),
                  AppNumberField(
                    controller: state.dueDateOnMonth,
                    label: "Her ayky toleg",
                    required: true,
                  ),
                  const SizedBox(height: 10),
                  AppNumberField(
                    controller: state.monthCount,
                    label: "Garashyk ayyn sany",
                    required: true,
                  ),
                  const SizedBox(height: 20),
                  if (state.contract == null)
                    Column(
                      children: [
                        AppNumberField(
                          controller: state.paidAmount,
                          label: "Bashlangych toleg",
                          required: true,
                        ),
                        const SizedBox(height: 20),
                      ],
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
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
