// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:hasap_admin/feature/auth/presentation/ui/login_page.dart'
    as _i1;
import 'package:hasap_admin/feature/client/data/client_models.dart' as _i15;
import 'package:hasap_admin/feature/client/presentation/create/ui/client_create_page.dart'
    as _i2;
import 'package:hasap_admin/feature/client/presentation/list/ui/client_list_page.dart'
    as _i3;
import 'package:hasap_admin/feature/contract/data/contract_models.dart' as _i16;
import 'package:hasap_admin/feature/contract/presentation/create/ui/contract_create_page.dart'
    as _i4;
import 'package:hasap_admin/feature/contract/presentation/list/ui/contract_list_page.dart'
    as _i5;
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart'
    as _i17;
import 'package:hasap_admin/feature/contract_return/presentation/create/ui/contract_return_create_page.dart'
    as _i6;
import 'package:hasap_admin/feature/contract_return/presentation/list/ui/contract_return_list_page.dart'
    as _i7;
import 'package:hasap_admin/feature/payment/data/payment_models.dart' as _i18;
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart'
    as _i8;
import 'package:hasap_admin/feature/payment/presentation/list/ui/payment_list_page.dart'
    as _i9;
import 'package:hasap_admin/feature/profile/presentation/ui/profile_page.dart'
    as _i10;
import 'package:hasap_admin/feature/service/data/service_models.dart' as _i19;
import 'package:hasap_admin/feature/service/presentation/create/ui/service_create_page.dart'
    as _i11;
import 'package:hasap_admin/feature/service/presentation/list/ui/service_list_page.dart'
    as _i12;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ClientCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ClientCreateRouteArgs>(
          orElse: () => const ClientCreateRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ClientCreatePage(
          key: args.key,
          client: args.client,
        ),
      );
    },
    ClientListRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ClientListPage(),
      );
    },
    ContractCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ContractCreateRouteArgs>(
          orElse: () => const ContractCreateRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ContractCreatePage(
          key: args.key,
          contract: args.contract,
        ),
      );
    },
    ContractListRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ContractListPage(),
      );
    },
    ContractReturnCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ContractReturnCreateRouteArgs>(
          orElse: () => const ContractReturnCreateRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ContractReturnCreatePage(
          key: args.key,
          contractReturn: args.contractReturn,
        ),
      );
    },
    ContractReturnListRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ContractReturnListPage(),
      );
    },
    PaymentCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentCreateRouteArgs>(
          orElse: () => const PaymentCreateRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PaymentCreatePage(
          key: args.key,
          payment: args.payment,
        ),
      );
    },
    PaymentListRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PaymentListPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfilePage(),
      );
    },
    ServiceCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceCreateRouteArgs>(
          orElse: () => const ServiceCreateRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ServiceCreatePage(
          key: args.key,
          service: args.service,
        ),
      );
    },
    ServiceListRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ServiceListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ClientCreatePage]
class ClientCreateRoute extends _i13.PageRouteInfo<ClientCreateRouteArgs> {
  ClientCreateRoute({
    _i14.Key? key,
    _i15.Client? client,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ClientCreateRoute.name,
          args: ClientCreateRouteArgs(
            key: key,
            client: client,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientCreateRoute';

  static const _i13.PageInfo<ClientCreateRouteArgs> page =
      _i13.PageInfo<ClientCreateRouteArgs>(name);
}

class ClientCreateRouteArgs {
  const ClientCreateRouteArgs({
    this.key,
    this.client,
  });

  final _i14.Key? key;

  final _i15.Client? client;

  @override
  String toString() {
    return 'ClientCreateRouteArgs{key: $key, client: $client}';
  }
}

/// generated route for
/// [_i3.ClientListPage]
class ClientListRoute extends _i13.PageRouteInfo<void> {
  const ClientListRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ClientListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientListRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ContractCreatePage]
class ContractCreateRoute extends _i13.PageRouteInfo<ContractCreateRouteArgs> {
  ContractCreateRoute({
    _i14.Key? key,
    _i16.Contract? contract,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ContractCreateRoute.name,
          args: ContractCreateRouteArgs(
            key: key,
            contract: contract,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractCreateRoute';

  static const _i13.PageInfo<ContractCreateRouteArgs> page =
      _i13.PageInfo<ContractCreateRouteArgs>(name);
}

class ContractCreateRouteArgs {
  const ContractCreateRouteArgs({
    this.key,
    this.contract,
  });

  final _i14.Key? key;

  final _i16.Contract? contract;

  @override
  String toString() {
    return 'ContractCreateRouteArgs{key: $key, contract: $contract}';
  }
}

/// generated route for
/// [_i5.ContractListPage]
class ContractListRoute extends _i13.PageRouteInfo<void> {
  const ContractListRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ContractListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContractListRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ContractReturnCreatePage]
class ContractReturnCreateRoute
    extends _i13.PageRouteInfo<ContractReturnCreateRouteArgs> {
  ContractReturnCreateRoute({
    _i14.Key? key,
    _i17.ContractReturn? contractReturn,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ContractReturnCreateRoute.name,
          args: ContractReturnCreateRouteArgs(
            key: key,
            contractReturn: contractReturn,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractReturnCreateRoute';

  static const _i13.PageInfo<ContractReturnCreateRouteArgs> page =
      _i13.PageInfo<ContractReturnCreateRouteArgs>(name);
}

class ContractReturnCreateRouteArgs {
  const ContractReturnCreateRouteArgs({
    this.key,
    this.contractReturn,
  });

  final _i14.Key? key;

  final _i17.ContractReturn? contractReturn;

  @override
  String toString() {
    return 'ContractReturnCreateRouteArgs{key: $key, contractReturn: $contractReturn}';
  }
}

/// generated route for
/// [_i7.ContractReturnListPage]
class ContractReturnListRoute extends _i13.PageRouteInfo<void> {
  const ContractReturnListRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ContractReturnListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContractReturnListRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PaymentCreatePage]
class PaymentCreateRoute extends _i13.PageRouteInfo<PaymentCreateRouteArgs> {
  PaymentCreateRoute({
    _i14.Key? key,
    _i18.Payment? payment,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          PaymentCreateRoute.name,
          args: PaymentCreateRouteArgs(
            key: key,
            payment: payment,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentCreateRoute';

  static const _i13.PageInfo<PaymentCreateRouteArgs> page =
      _i13.PageInfo<PaymentCreateRouteArgs>(name);
}

class PaymentCreateRouteArgs {
  const PaymentCreateRouteArgs({
    this.key,
    this.payment,
  });

  final _i14.Key? key;

  final _i18.Payment? payment;

  @override
  String toString() {
    return 'PaymentCreateRouteArgs{key: $key, payment: $payment}';
  }
}

/// generated route for
/// [_i9.PaymentListPage]
class PaymentListRoute extends _i13.PageRouteInfo<void> {
  const PaymentListRoute({List<_i13.PageRouteInfo>? children})
      : super(
          PaymentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentListRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ServiceCreatePage]
class ServiceCreateRoute extends _i13.PageRouteInfo<ServiceCreateRouteArgs> {
  ServiceCreateRoute({
    _i14.Key? key,
    _i19.Service? service,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ServiceCreateRoute.name,
          args: ServiceCreateRouteArgs(
            key: key,
            service: service,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceCreateRoute';

  static const _i13.PageInfo<ServiceCreateRouteArgs> page =
      _i13.PageInfo<ServiceCreateRouteArgs>(name);
}

class ServiceCreateRouteArgs {
  const ServiceCreateRouteArgs({
    this.key,
    this.service,
  });

  final _i14.Key? key;

  final _i19.Service? service;

  @override
  String toString() {
    return 'ServiceCreateRouteArgs{key: $key, service: $service}';
  }
}

/// generated route for
/// [_i12.ServiceListPage]
class ServiceListRoute extends _i13.PageRouteInfo<void> {
  const ServiceListRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ServiceListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceListRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
