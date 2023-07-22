// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:hasap_admin/feature/auth/presentation/ui/login_page.dart'
    as _i1;
import 'package:hasap_admin/feature/client/data/client_models.dart' as _i9;
import 'package:hasap_admin/feature/client/presentation/create/ui/client_create_page.dart'
    as _i2;
import 'package:hasap_admin/feature/client/presentation/list/ui/client_list_page.dart'
    as _i3;
import 'package:hasap_admin/feature/contract/presentation/list/ui/contract_list_page.dart'
    as _i4;
import 'package:hasap_admin/feature/payment/data/payment_models.dart' as _i10;
import 'package:hasap_admin/feature/payment/presentation/list/create/ui/payment_create_page.dart'
    as _i5;
import 'package:hasap_admin/feature/payment/presentation/list/list/ui/payment_list_page.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ClientCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ClientCreateRouteArgs>(
          orElse: () => const ClientCreateRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ClientCreatePage(
          key: args.key,
          client: args.client,
        ),
      );
    },
    ClientListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ClientListPage(),
      );
    },
    ContractListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ContractListPage(),
      );
    },
    PaymentCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentCreateRouteArgs>(
          orElse: () => const PaymentCreateRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PaymentCreatePage(
          key: args.key,
          payment: args.payment,
        ),
      );
    },
    PaymentListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PaymentListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ClientCreatePage]
class ClientCreateRoute extends _i7.PageRouteInfo<ClientCreateRouteArgs> {
  ClientCreateRoute({
    _i8.Key? key,
    _i9.Client? client,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ClientCreateRoute.name,
          args: ClientCreateRouteArgs(
            key: key,
            client: client,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientCreateRoute';

  static const _i7.PageInfo<ClientCreateRouteArgs> page =
      _i7.PageInfo<ClientCreateRouteArgs>(name);
}

class ClientCreateRouteArgs {
  const ClientCreateRouteArgs({
    this.key,
    this.client,
  });

  final _i8.Key? key;

  final _i9.Client? client;

  @override
  String toString() {
    return 'ClientCreateRouteArgs{key: $key, client: $client}';
  }
}

/// generated route for
/// [_i3.ClientListPage]
class ClientListRoute extends _i7.PageRouteInfo<void> {
  const ClientListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ClientListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ContractListPage]
class ContractListRoute extends _i7.PageRouteInfo<void> {
  const ContractListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ContractListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContractListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PaymentCreatePage]
class PaymentCreateRoute extends _i7.PageRouteInfo<PaymentCreateRouteArgs> {
  PaymentCreateRoute({
    _i8.Key? key,
    _i10.Payment? payment,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          PaymentCreateRoute.name,
          args: PaymentCreateRouteArgs(
            key: key,
            payment: payment,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentCreateRoute';

  static const _i7.PageInfo<PaymentCreateRouteArgs> page =
      _i7.PageInfo<PaymentCreateRouteArgs>(name);
}

class PaymentCreateRouteArgs {
  const PaymentCreateRouteArgs({
    this.key,
    this.payment,
  });

  final _i8.Key? key;

  final _i10.Payment? payment;

  @override
  String toString() {
    return 'PaymentCreateRouteArgs{key: $key, payment: $payment}';
  }
}

/// generated route for
/// [_i6.PaymentListPage]
class PaymentListRoute extends _i7.PageRouteInfo<void> {
  const PaymentListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PaymentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
