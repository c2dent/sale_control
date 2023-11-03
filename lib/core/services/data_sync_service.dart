import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/data_sync_services/region_sync.dart';
import 'package:injectable/injectable.dart';

abstract class DataSyncService {
  Future<void> outgoingSync();
  Future<void> incomingSync();
}

@Singleton(as: DataSyncService)
class DataSyncServiceImpl implements DataSyncService {
  final RegionSyncService reginSyncService;
  final KeyValueStore keyValueStore;

  List<TableSync> tableSyncs = [];

  DataSyncServiceImpl(this.reginSyncService, this.keyValueStore) {
    tableSyncs.add(reginSyncService);
    keyValueStore.init();
  }

  @override
  Future<void> incomingSync() async {
    for (var tableSync in tableSyncs) {
      await tableSync.incomingSync();
      await keyValueStore.write(tableSync.updateDatetimeKey, DateTime.now().toIso8601String());
    }
  }

  @override
  Future<void> outgoingSync() async {
    for (var tableSync in tableSyncs) {
      await tableSync.outgoingSync();
    }
  }
}