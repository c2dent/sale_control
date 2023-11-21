import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/widgets/form/select_region_dropdown.dart';
import 'package:hasap_admin/core/widgets/form/text_field.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/presentation/create/bloc/client_create_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/create/bloc/client_create_bloc_models.dart';

@RoutePage()
class ClientCreatePage extends StatelessWidget {
  final Client? client;

  const ClientCreatePage({super.key, this.client});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClientCreateBloc>(
      create: (context) => GetIt.I.get()..add(ClientCreateEvent.init(client: client)),
      child: SrBlocBuilder<ClientCreateBloc, ClientCreateState, ClientCreateSR>(
        onSR: _onSingleResult,
        builder: (_, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Mushderi goshmak"),
            ),
            body: state.map(empty: (_) => const Center(child: CircularProgressIndicator()), data: (state) => _ClientCreatePage(state: state)),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ClientCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => ErrorSnackbar.show(context: context, text: error.safeCustom!.error),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: () => Navigator.pop(context, true),
    );
  }
}

class _ClientCreatePage extends StatelessWidget {
  final ClientCreateStateData state;

  const _ClientCreatePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ClientCreateBloc>();
    AppTheme theme = AppTheme.of(context);

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
                padding: const EdgeInsets.only(top: 20, left: 3, right: 3),
                child: Column(
                  children: [
                    AppTextField(
                      controller: state.firstName,
                      label: "Ady",
                      required: true,
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      controller: state.lastName,
                      label: "Familiyasy",
                      required: true,
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      controller: state.surName,
                      label: "Ochestvasy",
                      required: false,
                    ),
                    const SizedBox(height: 10),
                    SelectRegionDropdown(
                      onChange: (Region? region, List<Region?> regions) {
                        bloc.add(ClientCreateEvent.selectRegion(region: region, regions: regions));
                      },
                      regions: state.data.regions,
                      getRegions: bloc.clientInteractor.getRegions,
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      controller: state.phone,
                      label: "Nomer belgisi",
                      required: true,
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      controller: state.phone2,
                      label: "Nomer belgisi 2",
                      required: false,
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      controller: state.description,
                      label: "Beldik",
                      required: false,
                      maxLines: 4,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (state.formKey.currentState!.validate()) {
                          if (state.client != null) {
                            bloc.add(const ClientCreateEvent.update());
                          } else {
                            bloc.add(const ClientCreateEvent.create());
                          }
                        }
                      },
                      child: Text(state.client != null ? "Uytget" : "Gosh"),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
