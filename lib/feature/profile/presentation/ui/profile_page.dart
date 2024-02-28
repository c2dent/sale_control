import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/widgets/constants.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
import 'package:hasap_admin/core/widgets/snackbar/error_snackbar.dart';
import 'package:hasap_admin/core/widgets/snackbar/success_snackbar.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:hasap_admin/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:hasap_admin/feature/profile/presentation/bloc/profile_bloc_models.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => GetIt.I.get()..add(const ProfileEvent.init()),
      child: SrBlocBuilder<ProfileBloc, ProfileState, ProfileSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Profile"),
              ),
              drawer: const DrawerMenu(index: 0),
              body: state.map(
                empty: (_) => const Center(child: CircularProgressIndicator()),
                data: (state) => _ProfilePage(state: state),
              ));
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, ProfileSR sr) {
    sr.when(
      showDioError: (error, notifier) => notifier.notify(error, context),
      successNotify: (text) => SuccessSnackbar.show(context: context, text: text),
      errorNotify: (text) => ErrorSnackbar.show(context: context, text: text),
      logout: () => context.router.replaceNamed('/login'),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  final ProfileStateData state;

  const _ProfilePage({required this.state});

  @override
  Widget build(BuildContext context) {
    final User? user = state.user;
    ThemeData theme = Theme.of(context);
    final bloc = context.read<ProfileBloc>();
    OfficeTableData office = state.data.office;

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Table(
            children: [
              getTableRow("Ady", Text("${user!.employee.firstName} ${user.employee.lastName}", style: theme.textTheme.labelLarge), theme, withExpanded: true),
              rowSpacerTwoColumn,
              getTableRow("Wesipesi", Text(user.permission, style: theme.textTheme.labelLarge), theme),
              rowSpacerTwoColumn,
              getTableRow("Ofisi", Text(office.title, style: theme.textTheme.labelLarge), theme),
              rowSpacerTwoColumn,
              getTableRow("Balansy", Text("${formatCurrency(office.balance)} TMT", style: theme.textTheme.labelLarge), theme),
              rowSpacerTwoColumn,
              getTableRow("Filter sany", Text(office.filterCount.toString(), style: theme.textTheme.labelLarge), theme),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () => state.data.recalculateBalanceLoading ? null : bloc.add(const ProfileEvent.recalculateBalance()),
                  child: const Text("Balansy hasapla"))
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: state.data.syncLoading ? null : () => bloc.add(const ProfileEvent.synchronize()),
                child: const Text("Synhronizle"),
              ),
              Row(
                children: [
                  if (state.data.syncLoading)
                    const SizedBox(width: 20, height: 20, child: CircularProgressIndicator())
                  else
                    Text(state.data.syncStatus, style: theme.textTheme.bodyMedium),
                  const SizedBox(width: 20)
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(theme.colorScheme.error)),
                    onPressed: () => bloc.add(const ProfileEvent.logout()),
                    child: Text(
                      "Chykmak",
                      style: theme.textTheme.titleMedium?.copyWith(color: theme.colorScheme.onError),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
