import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:hasap_admin/feature/auth/presentation/bloc/login_bloc.dart';
import 'package:hasap_admin/feature/auth/presentation/bloc/login_bloc_models.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => GetIt.I.get()..add(const LoginEvent.init()),
      child: SrBlocBuilder<LoginBloc, LoginState, LoginSR>(
          onSR: _onSingleResult,
          builder: (_, blocState) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text("Авторизация", style: TextStyle(color: Colors.white)),
                ),
                body: blocState.map(
                  empty: (_) => const Center(),
                  data: (state) => _LoginScreen(state: state),
                ));
          }),
    );
  }

  void _onSingleResult(BuildContext context, LoginSR sr) {
    sr.when(success: () => context.router.replaceNamed('/contract_list'), showDioError: (error, notifier) => notifier.notify(error, context));
  }
}

class _LoginScreen extends StatelessWidget {
  final LoginStateData state;

  const _LoginScreen({required this.state});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    ThemeData theme = Theme.of(context);

    void onClick() {
      if (state.formKey.currentState!.validate()) {
        bloc.add(LoginEvent.authorize(username: state.usernameController.text, pass: state.passwordController.text));
      }
    }

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: state.formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/logo.png', width: 120, color: theme.colorScheme.primary, height: 120),
                      const SizedBox(height: 40),
                      TextFormField(
                        controller: state.usernameController,
                        onFieldSubmitted: (String? val) {
                          if (state.formKey.currentState!.validate()) {
                            bloc.add(LoginEvent.authorize(username: state.usernameController.text, pass: state.passwordController.text));
                          }
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                          isDense: true,
                          labelText: "Ulanyjyn ady",
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Пожалуюста заполните поля';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: state.passwordController,
                        obscureText: !state.showPassword,
                        onFieldSubmitted: (String? val) {
                          if (state.formKey.currentState!.validate()) {
                            bloc.add(LoginEvent.authorize(username: state.usernameController.text, pass: state.passwordController.text));
                          }
                        },
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                            border: const OutlineInputBorder(),
                            hintText: "Parol",
                            suffixIcon: IconButton(onPressed: () => bloc.add(const LoginEvent.switchShowPassword()), icon: const Icon(Icons.visibility))),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Пожалуюста заполните поля';
                          }
                          return null;
                        },
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: !state.isLoading ? onClick : null,
                                child: const Text("Girmek"),
                              ),
                            ],
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
