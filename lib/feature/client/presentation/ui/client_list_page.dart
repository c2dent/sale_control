import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/area.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_modal.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/bloc/client_bloc_models.dart';

@RoutePage()
class ClientListPage extends StatelessWidget {
  const ClientListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClientBloc>(
      create: (context) => GetIt.I.get()..add(const ClientEvent.init()),
      child: SrBlocBuilder<ClientBloc, ClientState, ClientSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<ClientBloc>();

          return Scaffold(
              appBar: AppBar(
                title: const Text("Musderiler"),
                actions: [
                  IconButton(
                      onPressed: () => showDialog(
                          context: context,
                          builder: (BuildContext newContext) => FilterModal(
                            reset: () => bloc.add(const ClientEvent.resetFilter()),
                            filters: bloc.state.data.filters,
                          )),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ClientPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ClientSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
    );
  }
}

class _ClientPage extends StatelessWidget {
  final ClientStateData state;

  const _ClientPage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.clients.isEmpty) {
      return Column(
        children: [
          state.data.filters[3].filterWidget,
          Expanded(
            child: Center(
              child: Text(
                "Hic zat tapylmadyy",
                style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary),
              ),
            ),
          ),
        ],
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          const SizedBox(height: 5),
          state.data.filters[3].filterWidget,
          const SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
                itemCount: state.data.clients.length,
                itemBuilder: (BuildContext context, int index) {
                  Client client = state.data.clients[index];
                  Region region = client.address.area.region;
                  Area area = client.address.area;

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
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "${region.name} > ${area.name} > ${client.address.name}",
                                  style: theme.textTheme.title2,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "${client.creator.firstName} ${client.creator.lastName}",
                                  style: theme.textTheme.title2,
                                ),
                              ),
                              Text(
                                formattingDate(client.createdAt),
                                style: theme.textTheme.subtitle.copyWith(color: theme.colorTheme.textSecondary),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
