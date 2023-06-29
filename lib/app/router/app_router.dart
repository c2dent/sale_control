import 'package:auto_route/auto_route.dart';
import 'package:hasap_admin/app/router/app_router.gr.dart';

export 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: '/'),
    AutoRoute(page: ClientListRoute.page, path: '/client_list'),
    AutoRoute(page: ContractListRoute.page, path: '/contract_list'),
    AutoRoute(page: PaymentListRoute.page, path: '/payment_list')
  ];
}
