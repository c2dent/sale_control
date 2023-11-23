import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_screen.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/presentation/create/ui/client_create_page.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc.dart';
import 'package:hasap_admin/feature/client/presentation/list/bloc/client_bloc_models.dart';

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
          AppTheme theme = AppTheme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Müşderiler"),
                actions: [
                  IconButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => FilterScreen(
                                      filters: const {},
                                      reset: () => bloc.add(const ClientEvent.resetFilter()),
                                    )),
                          ),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  bool? client = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ClientCreatePage()),
                  );

                  if (client != null) {
                    bloc.add(const ClientEvent.filter());
                  }
                },
                backgroundColor: theme.colorTheme.primary,
                child: const Icon(Icons.add_circle_outline),
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ClientPage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ClientSR sr) {
    final bloc = context.read<ClientBloc>();

    sr.when(
      showDioError: (error, notifier) => ErrorSnackbar.show(context: context, text: error.safeCustom!.error),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      deleted: () => bloc.add(const ClientEvent.filter()),
    );
  }
}

class _ClientPage extends StatelessWidget {
  final ClientStateData state;

  const _ClientPage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<ClientBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.clients.isEmpty) {
      return Column(
        children: [
          const SizedBox(height: 5),
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
          Expanded(
            child: ListView.builder(
                itemCount: state.data.clients.length,
                itemBuilder: (BuildContext context, int index) {
                  Client client = state.data.clients[index];
                  Region region = client.region;

                  return GestureDetector(
                    onLongPress: () => showContextMenu(context, tapPosition,
                        edit: () async {
                          bool? updatedClient = await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ClientCreatePage(client: client)),
                          );

                          if (updatedClient != null) {
                            bloc.add(const ClientEvent.filter());
                          }
                        },
                        delete: () => bloc.add(ClientEvent.delete(client: client))),
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
                                if (client.haveDebt)
                                  Icon(Icons.check_circle, color: theme.colorTheme.success)
                                else
                                  Icon(Icons.cancel, color: theme.colorTheme.error)
                              ],
                            ),
                            Row(children: [Text(region.fullName, style: theme.textTheme.title2)]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${client.phone} ${client.phone2 ?? ''}"),
                                if (!client.isSynced) const Icon(Icons.sync, color: Colors.blueAccent)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${client.creator.firstName} ${client.creator.lastName}",
                                  style: theme.textTheme.subtitle.copyWith(color: theme.colorTheme.textSecondary),
                                ),
                                Text(
                                  formattingDateTime(client.createdAt),
                                  style: theme.textTheme.subtitle.copyWith(color: theme.colorTheme.textSecondary),
                                ),
                              ],
                            )
                          ],
                        ),
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
