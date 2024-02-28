// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:hasap_admin/core/storage/datebase/app_database.dart' as _i18;
import 'package:hasap_admin/feature/auth/presentation/ui/login_page.dart'
    as _i8;
import 'package:hasap_admin/feature/client/data/client_models.dart' as _i16;
import 'package:hasap_admin/feature/client/presentation/create/ui/client_create_page.dart'
    as _i1;
import 'package:hasap_admin/feature/client/presentation/list/ui/client_list_page.dart'
    as _i2;
import 'package:hasap_admin/feature/contract/data/contract_models.dart' as _i17;
import 'package:hasap_admin/feature/contract/presentation/create/ui/contract_create_page.dart'
    as _i3;
import 'package:hasap_admin/feature/contract/presentation/detail/ui/contract_detail_page.dart'
    as _i4;
import 'package:hasap_admin/feature/contract/presentation/list/ui/contract_list_page.dart'
    as _i5;
import 'package:hasap_admin/feature/contract_return/data/contract_return_models.dart'
    as _i19;
import 'package:hasap_admin/feature/contract_return/presentation/create/ui/contract_return_create_page.dart'
    as _i6;
import 'package:hasap_admin/feature/contract_return/presentation/list/ui/contract_return_list_page.dart'
    as _i7;
import 'package:hasap_admin/feature/payment/data/payment_models.dart' as _i20;
import 'package:hasap_admin/feature/payment/presentation/create/ui/payment_create_page.dart'
    as _i9;
import 'package:hasap_admin/feature/payment/presentation/list/ui/payment_list_page.dart'
    as _i10;
import 'package:hasap_admin/feature/profile/presentation/ui/profile_page.dart'
    as _i11;
import 'package:hasap_admin/feature/service/data/service_models.dart' as _i21;
import 'package:hasap_admin/feature/service/presentation/create/ui/service_create_page.dart'
    as _i12;
import 'package:hasap_admin/feature/service/presentation/list/ui/service_list_page.dart'
    as _i13;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    ClientCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ClientCreateRouteArgs>(
          orElse: () => const ClientCreateRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ClientCreatePage(
          key: args.key,
          client: args.client,
        ),
      );
    },
    ClientListRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ClientListPage(),
      );
    },
    ContractCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ContractCreateRouteArgs>(
          orElse: () => const ContractCreateRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ContractCreatePage(
          key: args.key,
          contract: args.contract,
        ),
      );
    },
    ContractDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ContractDetailRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ContractDetailPage(
          key: args.key,
          contractTableData: args.contractTableData,
        ),
      );
    },
    ContractListRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ContractListPage(),
      );
    },
    ContractReturnCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ContractReturnCreateRouteArgs>(
          orElse: () => const ContractReturnCreateRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ContractReturnCreatePage(
          key: args.key,
          contractReturn: args.contractReturn,
        ),
      );
    },
    ContractReturnListRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ContractReturnListPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    PaymentCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentCreateRouteArgs>(
          orElse: () => const PaymentCreateRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PaymentCreatePage(
          key: args.key,
          payment: args.payment,
          contractTableData: args.contractTableData,
        ),
      );
    },
    PaymentListRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PaymentListPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilePage(),
      );
    },
    ServiceCreateRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceCreateRouteArgs>(
          orElse: () => const ServiceCreateRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ServiceCreatePage(
          key: args.key,
          service: args.service,
          contractTableData: args.contractTableData,
        ),
      );
    },
    ServiceListRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ServiceListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ClientCreatePage]
class ClientCreateRoute extends _i14.PageRouteInfo<ClientCreateRouteArgs> {
  ClientCreateRoute({
    _i15.Key? key,
    _i16.Client? client,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ClientCreateRoute.name,
          args: ClientCreateRouteArgs(
            key: key,
            client: client,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientCreateRoute';

  static const _i14.PageInfo<ClientCreateRouteArgs> page =
      _i14.PageInfo<ClientCreateRouteArgs>(name);
}

class ClientCreateRouteArgs {
  const ClientCreateRouteArgs({
    this.key,
    this.client,
  });

  final _i15.Key? key;

  final _i16.Client? client;

  @override
  String toString() {
    return 'ClientCreateRouteArgs{key: $key, client: $client}';
  }
}

/// generated route for
/// [_i2.ClientListPage]
class ClientListRoute extends _i14.PageRouteInfo<void> {
  const ClientListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ClientListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientListRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ContractCreatePage]
class ContractCreateRoute extends _i14.PageRouteInfo<ContractCreateRouteArgs> {
  ContractCreateRoute({
    _i15.Key? key,
    _i17.ContractData? contract,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ContractCreateRoute.name,
          args: ContractCreateRouteArgs(
            key: key,
            contract: contract,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractCreateRoute';

  static const _i14.PageInfo<ContractCreateRouteArgs> page =
      _i14.PageInfo<ContractCreateRouteArgs>(name);
}

class ContractCreateRouteArgs {
  const ContractCreateRouteArgs({
    this.key,
    this.contract,
  });

  final _i15.Key? key;

  final _i17.ContractData? contract;

  @override
  String toString() {
    return 'ContractCreateRouteArgs{key: $key, contract: $contract}';
  }
}

/// generated route for
/// [_i4.ContractDetailPage]
class ContractDetailRoute extends _i14.PageRouteInfo<ContractDetailRouteArgs> {
  ContractDetailRoute({
    _i15.Key? key,
    required _i18.ContractTableData contractTableData,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ContractDetailRoute.name,
          args: ContractDetailRouteArgs(
            key: key,
            contractTableData: contractTableData,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractDetailRoute';

  static const _i14.PageInfo<ContractDetailRouteArgs> page =
      _i14.PageInfo<ContractDetailRouteArgs>(name);
}

class ContractDetailRouteArgs {
  const ContractDetailRouteArgs({
    this.key,
    required this.contractTableData,
  });

  final _i15.Key? key;

  final _i18.ContractTableData contractTableData;

  @override
  String toString() {
    return 'ContractDetailRouteArgs{key: $key, contractTableData: $contractTableData}';
  }
}

/// generated route for
/// [_i5.ContractListPage]
class ContractListRoute extends _i14.PageRouteInfo<void> {
  const ContractListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ContractListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContractListRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ContractReturnCreatePage]
class ContractReturnCreateRoute
    extends _i14.PageRouteInfo<ContractReturnCreateRouteArgs> {
  ContractReturnCreateRoute({
    _i15.Key? key,
    _i19.ContractReturnData? contractReturn,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ContractReturnCreateRoute.name,
          args: ContractReturnCreateRouteArgs(
            key: key,
            contractReturn: contractReturn,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractReturnCreateRoute';

  static const _i14.PageInfo<ContractReturnCreateRouteArgs> page =
      _i14.PageInfo<ContractReturnCreateRouteArgs>(name);
}

class ContractReturnCreateRouteArgs {
  const ContractReturnCreateRouteArgs({
    this.key,
    this.contractReturn,
  });

  final _i15.Key? key;

  final _i19.ContractReturnData? contractReturn;

  @override
  String toString() {
    return 'ContractReturnCreateRouteArgs{key: $key, contractReturn: $contractReturn}';
  }
}

/// generated route for
/// [_i7.ContractReturnListPage]
class ContractReturnListRoute extends _i14.PageRouteInfo<void> {
  const ContractReturnListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ContractReturnListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContractReturnListRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PaymentCreatePage]
class PaymentCreateRoute extends _i14.PageRouteInfo<PaymentCreateRouteArgs> {
  PaymentCreateRoute({
    _i15.Key? key,
    _i20.PaymentData? payment,
    _i18.ContractTableData? contractTableData,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          PaymentCreateRoute.name,
          args: PaymentCreateRouteArgs(
            key: key,
            payment: payment,
            contractTableData: contractTableData,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentCreateRoute';

  static const _i14.PageInfo<PaymentCreateRouteArgs> page =
      _i14.PageInfo<PaymentCreateRouteArgs>(name);
}

class PaymentCreateRouteArgs {
  const PaymentCreateRouteArgs({
    this.key,
    this.payment,
    this.contractTableData,
  });

  final _i15.Key? key;

  final _i20.PaymentData? payment;

  final _i18.ContractTableData? contractTableData;

  @override
  String toString() {
    return 'PaymentCreateRouteArgs{key: $key, payment: $payment, contractTableData: $contractTableData}';
  }
}

/// generated route for
/// [_i10.PaymentListPage]
class PaymentListRoute extends _i14.PageRouteInfo<void> {
  const PaymentListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          PaymentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentListRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProfilePage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ServiceCreatePage]
class ServiceCreateRoute extends _i14.PageRouteInfo<ServiceCreateRouteArgs> {
  ServiceCreateRoute({
    _i15.Key? key,
    _i21.ServiceData? service,
    _i18.ContractTableData? contractTableData,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ServiceCreateRoute.name,
          args: ServiceCreateRouteArgs(
            key: key,
            service: service,
            contractTableData: contractTableData,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceCreateRoute';

  static const _i14.PageInfo<ServiceCreateRouteArgs> page =
      _i14.PageInfo<ServiceCreateRouteArgs>(name);
}

class ServiceCreateRouteArgs {
  const ServiceCreateRouteArgs({
    this.key,
    this.service,
    this.contractTableData,
  });

  final _i15.Key? key;

  final _i21.ServiceData? service;

  final _i18.ContractTableData? contractTableData;

  @override
  String toString() {
    return 'ServiceCreateRouteArgs{key: $key, service: $service, contractTableData: $contractTableData}';
  }
}

/// generated route for
/// [_i13.ServiceListPage]
class ServiceListRoute extends _i14.PageRouteInfo<void> {
  const ServiceListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ServiceListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceListRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
