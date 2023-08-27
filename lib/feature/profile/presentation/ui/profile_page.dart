import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/app/theme/bloc/app_theme.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/widgets/drawer_menu.dart';
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
              drawer: const DrawerMenu(),
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
    );
  }
}

class _ProfilePage extends StatelessWidget {
  final ProfileStateData state;

  const _ProfilePage({required this.state, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User? user = state.user;
    AppTheme theme = AppTheme.of(context);
    final bloc = context.read<ProfileBloc>();

    if (state.data.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    const rowSpacer = TableRow(children: [
      SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 8,
      )
    ]);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Table(
            children: [
              TableRow(children: [
                TableCell(
                  child: Text("Ady", style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary)),
                ),
                TableCell(
                  child: Text(
                    "${user!.employee.firstName} ${user.employee.lastName}",
                    style: theme.textTheme.title1,
                  ),
                )
              ]),
              rowSpacer,
              TableRow(children: [
                TableCell(
                  child: Text("Wesipesi", style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary)),
                ),
                TableCell(
                  child: Text(user.permission, style: theme.textTheme.title1),
                )
              ]),
              rowSpacer,
              TableRow(children: [
                TableCell(
                  child: Text("Ofisi", style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary)),
                ),
                TableCell(
                  child: Text(user.office.title, style: theme.textTheme.title1),
                )
              ]),
              rowSpacer,
              TableRow(children: [
                TableCell(
                  child: Text("Balansy", style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary)),
                ),
                TableCell(child: Text("${formatCurrency(user.office.balance)} TMT", style: theme.textTheme.title1)),
              ]),
              rowSpacer,
              TableRow(children: [
                TableCell(
                  child: Text("Filter sany", style: theme.textTheme.title2.copyWith(color: theme.colorTheme.textSecondary)),
                ),
                TableCell(
                  child: Text(user.office.filterCount.toString(), style: theme.textTheme.title1),
                )
              ])
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
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(theme.colorTheme.error)),
                  onPressed: () => bloc.add(const ProfileEvent.recalculateBalance()),
                  child: const Text("Chykmak"))
            ],
          )
        ],
      ),
    );
  }
}
