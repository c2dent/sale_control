import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/mappers/client_mapper.dart';
import 'package:hasap_admin/core/models/sync/client_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/datebase/daos/client_dao.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/feature/client/data/services/client_api_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClientSyncService implements TableSync {
  final ClientApiService _clientApiService;
  final ClientDao _clientDao;

  ClientSyncService(this._clientApiService, this._clientDao);

  @override
  TypeStoreKey<String> get updateDatetimeKey => StoreKeys.prefsClientLastUpdateDateKey;

  @override
  Future<void> incomingSync(Map<String, String> params) async {
    final result = await _clientApiService.getClientsSync(params);
    if (result.isLeft) return;

    List<ClientSync> clients = result.right;
    for (ClientSync client in clients) {
      ClientTableCompanion clientTableCompanion = ClientMapper.fromClientSync(client);
       final result = await _clientDao.isExists(client.id);
       if (result.isLeft) return;

       if (result.right != null && !result.right!.isSynced && result.right!.modifiedAt.isAfter(client.modifiedAt)) return;

      result.right != null ? await _clientDao.updateClient(clientTableCompanion) : await _clientDao.insertClient(clientTableCompanion);
    }
  }

  @override
  Future<void> outgoingSync() async {
    final result = await _clientDao.getUnSyncedClient();
    if (result.isLeft) return;
    List<Map<String, dynamic>> data = result.right;

    final response = await _clientApiService.setClientsSync(data);
    if (response.isLeft) return;
    await _clientDao.allSynced();
  }
}