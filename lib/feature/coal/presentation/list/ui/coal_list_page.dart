import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_modal.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/coal/data/coal_models.dart';
import 'package:hasap_admin/feature/coal/presentation/create/ui/coal_create_page.dart';
import 'package:hasap_admin/feature/coal/presentation/list/bloc/coal_bloc.dart';
import 'package:hasap_admin/feature/coal/presentation/list/bloc/coal_bloc_models.dart';

@RoutePage()
class CoalListPage extends StatelessWidget {
  const CoalListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoalBloc>(
      create: (context) =>
      GetIt.I.get()
        ..add(const CoalEvent.init()),
      child: SrBlocBuilder<CoalBloc, CoalState, CoalSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<CoalBloc>();
          AppTheme theme = AppTheme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Kömür hyzmaty"),
                actions: [
                  IconButton(
                      onPressed: () =>
                          showDialog(
                              context: context,
                              builder: (BuildContext newContext) =>
                                  FilterModal(
                                    reset: () => bloc.add(const CoalEvent.resetFilter()),
                                    filters: bloc.state.data.filters,
                                  )),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  Coal? coal = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CoalCreatePage()),
                  );

                  if (coal != null) {
                    bloc.add(const CoalEvent.filter());
                  }
                },
                backgroundColor: theme.colorTheme.primary,
                child: const Icon(Icons.add_circle_outline),
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _CoalPage(bloc: bloc, state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, CoalSR sr) {
    final bloc = context.read<CoalBloc>();

    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      delete: (coal) => bloc.add(const CoalEvent.filter()),
    );
  }
}

class _CoalPage extends StatelessWidget {
  final CoalBloc bloc;
  final CoalState state;

  const _CoalPage({Key? key, required this.bloc, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<CoalBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.coals.isEmpty) {
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
            Expanded(
                child: ListView.builder(
                  itemCount: state.data.coals.length,
                  itemBuilder: (context, index) {
                    Coal coal = state.data.coals[index];
                    return GestureDetector(
                      onTapDown: (details) => tapPosition = details.globalPosition,
                      onLongPress: () =>
                          showContextMenu(context, tapPosition,
                            edit: () async {
                              Coal? updateCoal = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CoalCreatePage(coal: coal)),
                              );

                              if (updateCoal != null) {
                                bloc.add(const CoalEvent.filter());
                              }
                            },
                            delete: () => bloc.add(CoalEvent.delete(coal: coal)),
                          ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        decoration: BoxDecoration(
                          color: theme.colorTheme.surface,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorTheme.onSecondary,
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${coal.contract.client.firstName} ${coal.contract.client.lastName}",
                                    style: theme.textTheme.title2,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () => bloc.add(CoalEvent.delete(coal: coal)),
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ))
          ],
        ));
  }
}
