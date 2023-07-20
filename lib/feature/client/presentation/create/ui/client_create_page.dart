import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/widgets/form/select_region_dropdown.dart';
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
            body:
                state.map(empty: (_) => const Center(child: CircularProgressIndicator()), data: (state) => _ClientCreatePage(state: state)),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ClientCreateSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      created: (client) => Navigator.pop(context, client),
    );
  }
}

class _ClientCreatePage extends StatelessWidget {
  final ClientCreateStateData state;

  const _ClientCreatePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ClientCreateBloc>();

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
                    TextFormField(
                      controller: state.firstName,
                      decoration: const InputDecoration(
                        labelText: "Ady*",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Adynyy yazyn";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: state.lastName,
                      decoration: const InputDecoration(
                        labelText: "Familiyasy*",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Familiyasyny yazyn";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: state.surName,
                      decoration: const InputDecoration(
                        labelText: "Ochestvasy",
                      ),
                    ),
                    SelectRegionDropdown(
                      onChange: (Region? region, List<Region?> regions) {
                        bloc.add(ClientCreateEvent.selectRegion(region: region, regions: regions));
                      },
                      regions: state.data.regions,
                      getRegions: bloc.clientInteractor.getRegions,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: state.phone,
                      decoration: const InputDecoration(
                        labelText: "Nomer belgisi*",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Nomer belgisini gorkezin";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: state.phone2,
                      decoration: const InputDecoration(
                        labelText: "Goshmacha nomer belgisi",
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: state.description,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        labelText: "Beldik",
                      ),
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
