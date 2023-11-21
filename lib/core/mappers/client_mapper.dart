import 'package:drift/drift.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/models/employee.dart';
import 'package:hasap_admin/core/models/region.dart';
import 'package:hasap_admin/core/models/sync/client_sync.dart';
import 'package:hasap_admin/core/storage/datebase/app_database.dart';
import 'package:hasap_admin/core/storage/sharedPrefs/store_keys.dart';
import 'package:hasap_admin/feature/client/data/client_models.dart';
import 'package:hasap_admin/feature/client/presentation/create/bloc/client_create_bloc_models.dart';
import 'package:hasap_admin/feature/contract/presentation/create/bloc/contract_create_bloc_models.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class ClientMapper {
  final KeyValueStore _store;

  ClientMapper(this._store);

  static ClientTableCompanion fromClientSync(ClientSync clientSync) {
    return ClientTableCompanion(
      id: Value(clientSync.id),
      firstName: Value(clientSync.firstName),
      lastName: Value(clientSync.lastName),
      surName: Value(clientSync.surName),
      phone: Value(clientSync.phone),
      phone2: Value(clientSync.phone2),
      description: Value(clientSync.description),
      officeId: Value(clientSync.officeId),
      regionId: Value(clientSync.regionId),
      creatorId: Value(clientSync.creatorId),
      createdAt: Value(clientSync.createdAt),
      modifiedAt: Value(clientSync.modifiedAt),
      isDeleted: Value(clientSync.isDeleted),
      isSynced: Value(clientSync.isSynced),
    );
  }

  static Future<ClientTableCompanion> fromMap(ClientCreateStateData data, bool forCreate, KeyValueStore store) async {
    var uuid = const Uuid();
    String? officeId = await store.read(StoreKeys.prefsCurrentOfficeId);
    String? employeeId = await store.read(StoreKeys.prefsCurrentEmployeeId);

    return ClientTableCompanion(
      id: Value(forCreate ? uuid.v4() : data.client!.id),
      firstName: Value(data.firstName.text),
      lastName: Value(data.lastName.text),
      surName: Value(data.surName.text),
      phone: Value(data.phone.text),
      phone2: Value(data.phone2.text),
      description: Value(data.description.text),
      regionId: Value(data.region!.id),
      creatorId: Value(employeeId),
      officeId: Value(officeId),
      createdAt: Value(forCreate ? DateTime.now() : data.client!.createdAt),
      modifiedAt: Value(DateTime.now()),
      isSynced: const Value(false),
      isDeleted: const Value(false),
    );
  }

  static Client fromClientData(
      {required ClientTableData client, required Region region, required Employee employee, required bool haveDebt}) {
    return Client(
      id: client.id,
      haveDebt: haveDebt,
      firstName: client.firstName,
      lastName: client.lastName,
      surName: client.surName,
      description: client.description,
      phone: client.phone,
      phone2: client.phone2,
      region: region,
      creator: employee,
      createdAt: client.createdAt,
      isSynced: client.isSynced,
    );
  }

  Future<ClientTableCompanion> fromStateData({required ContractCreateStateData data, required bool forCreate}) async {
    var uuid = const Uuid();
    String? officeId = await _store.read(StoreKeys.prefsCurrentOfficeId);
    String? employeeId = await _store.read(StoreKeys.prefsCurrentEmployeeId);

    return ClientTableCompanion(
      id: Value(forCreate ? uuid.v4() : data.contract!.client.id),
      firstName: Value(data.firstName.text),
      lastName: Value(data.lastName.text),
      phone: Value(data.phone.text),
      phone2: Value(data.phone2.text),
      description: Value(data.description.text),
      regionId: Value(data.region!.id),
      creatorId: Value(forCreate ? employeeId : data.contract!.client.creatorId),
      officeId: Value(forCreate ? officeId : data.contract!.client.officeId),
      createdAt: Value(forCreate ? DateTime.now() : data.contract!.client.createdAt),
      modifiedAt: Value(DateTime.now()),
      isSynced: const Value(false),
      isDeleted: const Value(false),
    );
  }
}
