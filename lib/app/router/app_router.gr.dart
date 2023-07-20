// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:hasap_admin/feature/auth/presentation/ui/login_page.dart'
    as _i1;
import 'package:hasap_admin/feature/client/data/client_models.dart' as _i8;
import 'package:hasap_admin/feature/client/presentation/create/ui/client_create_page.dart'
    as _i5;
import 'package:hasap_admin/feature/client/presentation/list/ui/client_list_page.dart'
    as _i4;
import 'package:hasap_admin/feature/contract/presentation/list/ui/contract_list_page.dart'
    as _i2;
import 'package:hasap_admin/feature/payment/presentation/list/ui/payment_list_page.dart'
    as _i3;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ContractListRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ContractListPage(),
      );
    },
    PaymentListRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PaymentListPage(),
      );
    },
    ClientListRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ClientListPage(),
      );
    },
    ClientCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ClientCreateRouteArgs>(
          orElse: () => const ClientCreateRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ClientCreatePage(
          key: args.key,
          client: args.client,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ContractListPage]
class ContractListRoute extends _i6.PageRouteInfo<void> {
  const ContractListRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ContractListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContractListRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PaymentListPage]
class PaymentListRoute extends _i6.PageRouteInfo<void> {
  const PaymentListRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PaymentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentListRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ClientListPage]
class ClientListRoute extends _i6.PageRouteInfo<void> {
  const ClientListRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ClientListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientListRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ClientCreatePage]
class ClientCreateRoute extends _i6.PageRouteInfo<ClientCreateRouteArgs> {
  ClientCreateRoute({
    _i7.Key? key,
    _i8.Client? client,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ClientCreateRoute.name,
          args: ClientCreateRouteArgs(
            key: key,
            client: client,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientCreateRoute';

  static const _i6.PageInfo<ClientCreateRouteArgs> page =
      _i6.PageInfo<ClientCreateRouteArgs>(name);
}

class ClientCreateRouteArgs {
  const ClientCreateRouteArgs({
    this.key,
    this.client,
  });

  final _i7.Key? key;

  final _i8.Client? client;

  @override
  String toString() {
    return 'ClientCreateRouteArgs{key: $key, client: $client}';
  }
}
