// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:hasap_admin/feature/auth/presentation/ui/login_page.dart'
    as _i1;
import 'package:hasap_admin/feature/client/data/client_models.dart' as _i12;
import 'package:hasap_admin/feature/client/presentation/create/ui/client_create_page.dart'
    as _i2;
import 'package:hasap_admin/feature/client/presentation/list/ui/client_list_page.dart'
    as _i3;
import 'package:hasap_admin/feature/coal/data/coal_models.dart' as _i15;
import 'package:hasap_admin/feature/coal/presentation/create/ui/coal_create_page.dart'
    as _i8;
import 'package:hasap_admin/feature/coal/presentation/list/ui/coal_list_page.dart'
    as _i9;
import 'package:hasap_admin/feature/contract/data/contract_models.dart' as _i14;
import 'package:hasap_admin/feature/contract/presentation/create/ui/contract_create_page.dart'
    as _i7;
import 'package:hasap_admin/feature/contract/presentation/list/ui/contract_list_page.dart'
    as _i4;
import 'package:hasap_admin/feature/payment/data/payment_models.dart' as _i13;
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart'
    as _i5;
import 'package:hasap_admin/feature/payment/presentation/list/ui/payment_list_page.dart'
    as _i6;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ClientCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ClientCreateRouteArgs>(
          orElse: () => const ClientCreateRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ClientCreatePage(
          key: args.key,
          client: args.client,
        ),
      );
    },
    ClientListRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ClientListPage(),
      );
    },
    ContractListRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ContractListPage(),
      );
    },
    PaymentCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentCreateRouteArgs>(
          orElse: () => const PaymentCreateRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PaymentCreatePage(
          key: args.key,
          payment: args.payment,
        ),
      );
    },
    PaymentListRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PaymentListPage(),
      );
    },
    ContractCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ContractCreateRouteArgs>(
          orElse: () => const ContractCreateRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ContractCreatePage(
          key: args.key,
          contract: args.contract,
        ),
      );
    },
    CoalCreateRoute.name: (routeData) {
      final args = routeData.argsAs<CoalCreateRouteArgs>(
          orElse: () => const CoalCreateRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.CoalCreatePage(
          key: args.key,
          coal: args.coal,
        ),
      );
    },
    CoalListRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CoalListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ClientCreatePage]
class ClientCreateRoute extends _i10.PageRouteInfo<ClientCreateRouteArgs> {
  ClientCreateRoute({
    _i11.Key? key,
    _i12.Client? client,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ClientCreateRoute.name,
          args: ClientCreateRouteArgs(
            key: key,
            client: client,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientCreateRoute';

  static const _i10.PageInfo<ClientCreateRouteArgs> page =
      _i10.PageInfo<ClientCreateRouteArgs>(name);
}

class ClientCreateRouteArgs {
  const ClientCreateRouteArgs({
    this.key,
    this.client,
  });

  final _i11.Key? key;

  final _i12.Client? client;

  @override
  String toString() {
    return 'ClientCreateRouteArgs{key: $key, client: $client}';
  }
}

/// generated route for
/// [_i3.ClientListPage]
class ClientListRoute extends _i10.PageRouteInfo<void> {
  const ClientListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ClientListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientListRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ContractListPage]
class ContractListRoute extends _i10.PageRouteInfo<void> {
  const ContractListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ContractListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContractListRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PaymentCreatePage]
class PaymentCreateRoute extends _i10.PageRouteInfo<PaymentCreateRouteArgs> {
  PaymentCreateRoute({
    _i11.Key? key,
    _i13.Payment? payment,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          PaymentCreateRoute.name,
          args: PaymentCreateRouteArgs(
            key: key,
            payment: payment,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentCreateRoute';

  static const _i10.PageInfo<PaymentCreateRouteArgs> page =
      _i10.PageInfo<PaymentCreateRouteArgs>(name);
}

class PaymentCreateRouteArgs {
  const PaymentCreateRouteArgs({
    this.key,
    this.payment,
  });

  final _i11.Key? key;

  final _i13.Payment? payment;

  @override
  String toString() {
    return 'PaymentCreateRouteArgs{key: $key, payment: $payment}';
  }
}

/// generated route for
/// [_i6.PaymentListPage]
class PaymentListRoute extends _i10.PageRouteInfo<void> {
  const PaymentListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PaymentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentListRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ContractCreatePage]
class ContractCreateRoute extends _i10.PageRouteInfo<ContractCreateRouteArgs> {
  ContractCreateRoute({
    _i11.Key? key,
    _i14.Contract? contract,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ContractCreateRoute.name,
          args: ContractCreateRouteArgs(
            key: key,
            contract: contract,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractCreateRoute';

  static const _i10.PageInfo<ContractCreateRouteArgs> page =
      _i10.PageInfo<ContractCreateRouteArgs>(name);
}

class ContractCreateRouteArgs {
  const ContractCreateRouteArgs({
    this.key,
    this.contract,
  });

  final _i11.Key? key;

  final _i14.Contract? contract;

  @override
  String toString() {
    return 'ContractCreateRouteArgs{key: $key, contract: $contract}';
  }
}

/// generated route for
/// [_i8.CoalCreatePage]
class CoalCreateRoute extends _i10.PageRouteInfo<CoalCreateRouteArgs> {
  CoalCreateRoute({
    _i11.Key? key,
    _i15.Coal? coal,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          CoalCreateRoute.name,
          args: CoalCreateRouteArgs(
            key: key,
            coal: coal,
          ),
          initialChildren: children,
        );

  static const String name = 'CoalCreateRoute';

  static const _i10.PageInfo<CoalCreateRouteArgs> page =
      _i10.PageInfo<CoalCreateRouteArgs>(name);
}

class CoalCreateRouteArgs {
  const CoalCreateRouteArgs({
    this.key,
    this.coal,
  });

  final _i11.Key? key;

  final _i15.Coal? coal;

  @override
  String toString() {
    return 'CoalCreateRouteArgs{key: $key, coal: $coal}';
  }
}

/// generated route for
/// [_i9.CoalListPage]
class CoalListRoute extends _i10.PageRouteInfo<void> {
  const CoalListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CoalListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoalListRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
