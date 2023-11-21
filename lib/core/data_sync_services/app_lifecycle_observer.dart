import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:hasap_admin/core/data_sync_services/data_sync_service.dart';

class AppLifecycleObserver with WidgetsBindingObserver {
  final Connectivity _connectivity = Connectivity();
  final DataSyncService _dataSyncService = GetIt.instance.get<DataSyncService>();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // Приложение перешло в фоновый режим, проверьте состояние подключения
      _checkConnectivityAndSync();
    }
  }

  void _checkConnectivityAndSync() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      // Запустить синхронизацию с сервером
      synchronizeData();
    }
  }

  void synchronizeData() async {
    await _dataSyncService.incomingSync();
    await _dataSyncService.outgoingSync();
  }
}