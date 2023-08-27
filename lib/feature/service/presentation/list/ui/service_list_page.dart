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
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/presentation/create/ui/service_create_page.dart';
import 'package:hasap_admin/feature/service/presentation/list/bloc/service_bloc.dart';
import 'package:hasap_admin/feature/service/presentation/list/bloc/service_bloc_models.dart';

@RoutePage()
class ServiceListPage extends StatelessWidget {
  const ServiceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceBloc>(
      create: (context) =>
      GetIt.I.get()
        ..add(const ServiceEvent.init()),
      child: SrBlocBuilder<ServiceBloc, ServiceState, ServiceSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<ServiceBloc>();
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
                                    reset: () => bloc.add(const ServiceEvent.resetFilter()),
                                    filters: bloc.state.data.filters,
                                  )),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  Service? service = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ServiceCreatePage()),
                  );

                  if (service != null) {
                    bloc.add(const ServiceEvent.filter());
                  }
                },
                backgroundColor: theme.colorTheme.primary,
                child: const Icon(Icons.add_circle_outline),
              ),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ServicePage(bloc: bloc, state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ServiceSR sr) {
    final bloc = context.read<ServiceBloc>();

    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      delete: (service) => bloc.add(const ServiceEvent.filter()),
    );
  }
}

class _ServicePage extends StatelessWidget {
  final ServiceBloc bloc;
  final ServiceState state;

  const _ServicePage({Key? key, required this.bloc, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.of(context);
    Offset tapPosition = Offset.zero;
    final bloc = context.read<ServiceBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.data.services.isEmpty) {
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
                  itemCount: state.data.services.length,
                  itemBuilder: (context, index) {
                    Service service = state.data.services[index];
                    return GestureDetector(
                      onTapDown: (details) => tapPosition = details.globalPosition,
                      onLongPress: () =>
                          showContextMenu(context, tapPosition,
                            edit: () async {
                              Service? updateService = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceCreatePage(service: service)),
                              );

                              if (updateService != null) {
                                bloc.add(const ServiceEvent.filter());
                              }
                            },
                            delete: () => bloc.add(ServiceEvent.delete(service: service)),
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${service.contract.client.firstName} ${service.contract.client.lastName}",
                                        style: theme.textTheme.title1,
                                      ),
                                      if (service.amount > 0)
                                        Card(
                                          color: theme.colorTheme.error.withOpacity(0.7),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                          child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                              child: Text("${formatCurrency(service.amount)} тмт",
                                                  style: TextStyle(color: theme.colorTheme.onSuccess, fontWeight: FontWeight.bold))),
                                        ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(service.type.name, style: theme.textTheme.title1),
                                      Text(formattingDate(service.createdAt), style: theme.textTheme.title2)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "${service.creator.firstName ?? ''} ${service.creator.lastName ?? ''}",
                                          style: theme.textTheme.title2,
                                        ),
                                      ),
                                      Text(
                                        formattingDate(service.createdAt),
                                        style: theme.textTheme.subtitle.copyWith(color: theme.colorTheme.textSecondary),
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
