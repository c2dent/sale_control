import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/filter_screen.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
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
      create: (context) => GetIt.I.get()..add(const ServiceEvent.init()),
      child: SrBlocBuilder<ServiceBloc, ServiceState, ServiceSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          final bloc = context.read<ServiceBloc>();
          AppTheme theme = AppTheme.of(context);

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
              drawer: const DrawerMenu(),
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
      showDioError: (error, notifier) => ErrorSnackbar.show(context: context, text: error.safeCustom!.error),
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
                ServiceData service = state.data.services[index];
                return GestureDetector(
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
                                    service.clientName,
                                    style: theme.textTheme.title1.copyWith(fontSize: 20),
                                  ),
                                  if (!service.service.isSynced) const Icon(Icons.sync, color: Colors.blueAccent)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(service.getType.name, style: theme.textTheme.title1),
                                  if (service.service.amount > 0)
                                    Card(
                                      color: getBgColorAmount(service.getType, theme),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                          child: Text("${formatCurrency(service.service.amount)} тмт",
                                              style: TextStyle(color: theme.colorTheme.onSuccess, fontWeight: FontWeight.bold))),
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      service.creatorName,
                                      style: theme.textTheme.title2,
                                    ),
                                  ),
                                  Text(
                                    formattingDateTime(service.service.createdAt),
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

Color getBgColorAmount(ServiceType type, AppTheme theme) {
  switch (type.operationType) {
    case 'OUTCOME':
      return theme.colorTheme.error.withOpacity(0.7);
    case 'INCOME':
      return theme.colorTheme.success.withOpacity(0.7);
    default:
      return Colors.blueAccent.withOpacity(0.7);
  }
}
