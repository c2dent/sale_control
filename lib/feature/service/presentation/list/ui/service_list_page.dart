import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_screen.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/service/data/service_models.dart';
import 'package:hasap_admin/feature/service/presentation/create/ui/service_create_page.dart';
import 'package:hasap_admin/feature/service/presentation/detail/ui/service_detail_page.dart';
import 'package:hasap_admin/feature/service/presentation/helper.dart';
import 'package:hasap_admin/feature/service/presentation/list/bloc/service_bloc.dart';
import 'package:hasap_admin/feature/service/presentation/list/bloc/service_bloc_models.dart';

@RoutePage()
class ServiceListPage extends StatelessWidget {
  const ServiceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceBloc>(
      create: (context) => GetIt.I.get()..add(const ServiceEvent.init()),
      child: SrBlocBuilder<ServiceBloc, ServiceState, ServiceSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<ServiceBloc>();
          ThemeData theme = Theme.of(context);

          return Scaffold(
              appBar: AppBar(
                title: const Text("Hyzmatlar"),
                actions: [
                  IconButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen(
                                      filters: const {},
                                      reset: () => bloc.add(const ServiceEvent.resetFilter()),
                                    )),
                          ),
                      icon: const Icon(Icons.filter_alt_rounded))
                ],
              ),
              drawer: const DrawerMenu(index: 3),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  bool? service = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ServiceCreatePage()),
                  );

                  if (service != null) {
                    bloc.add(const ServiceEvent.filter());
                  }
                },
                backgroundColor: theme.colorScheme.primary,
                child: Icon(Icons.add_circle_outline, color: theme.colorScheme.onPrimary),
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
      showDioError: (error, notifier) => ErrorSnackbar.show(context: context, text: error.safeCustom!.error),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      delete: (service) => bloc.add(const ServiceEvent.filter()),
    );
  }
}

class _ServicePage extends StatelessWidget {
  final ServiceBloc bloc;
  final ServiceState state;

  const _ServicePage({required this.bloc, required this.state});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
                style: theme.textTheme.bodyLarge,
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
                ServiceData service = state.data.services[index];
                final amountColor = getBgColorAmount(service.getType, theme);

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ServiceDetailPage(serviceTableData: service.service)),
                    ),
                    onTapDown: (details) => tapPosition = details.globalPosition,
                    onLongPress: () => showContextMenu(
                      context,
                      tapPosition,
                      edit: () async {
                        bool? updateService = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ServiceCreatePage(service: service)),
                        );

                        if (updateService != null) {
                          bloc.add(const ServiceEvent.filter());
                        }
                      },
                      delete: () => bloc.add(ServiceEvent.delete(service: service)),
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  service.clientName,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                if (!service.service.isSynced) const Icon(Icons.sync, color: Colors.blueAccent)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(service.getType.name, style: theme.textTheme.titleMedium),
                                if (service.service.amount > 0)
                                  Card(
                                    color: amountColor.$1,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                        child: Text("${formatCurrency(service.service.amount)} тмт",
                                            style: TextStyle(color: amountColor.$2, fontWeight: FontWeight.bold))),
                                  ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    service.creatorName,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Text(
                                  formattingDateTime(service.service.createdAt),
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )),
            const SizedBox(height: 40),
          ],
        ));
  }
}
