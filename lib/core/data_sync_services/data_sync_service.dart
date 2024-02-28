import 'package:hasap_admin/arch/data_sync/table_sync.dart';
import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';
import 'package:hasap_admin/core/data_sync_services/admission_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/client_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/contract_return_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/contract_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/employee_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/office_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/operation_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/payment_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/product_operation_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/product_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/region_sync_service.dart';
import 'package:hasap_admin/core/data_sync_services/service_sync_service.dart';
import 'package:hasap_admin/core/widgets/utils.dart';
import 'package:injectable/injectable.dart';

abstract class DataSyncService {
  Future<void> outgoingSync();

  Future<void> incomingSync();
}

@Singleton(as: DataSyncService)
class DataSyncServiceImpl implements DataSyncService {
  final RegionSyncService reginSyncService;
  final OfficeSyncService officeSyncService;
  final EmployeeSyncService employeeSyncService;
  final ClientSyncService clientSyncService;
  final ContractSyncService contractSyncService;
  final ContractReturnSyncService contractReturnSyncService;
  final OperationSyncService operationSyncService;
  final PaymentSyncService paymentSyncService;
  final ServiceSyncService serviceSyncService;
  final ProductSyncService productSyncService;
  final ProductOperationSyncService productOperationSyncService;
  final AdmissionSyncService admissionSyncService;
  final KeyValueStore keyValueStore;

  List<TableSync> tableSyncs = [];

  DataSyncServiceImpl(
      this.reginSyncService,
      this.keyValueStore,
      this.officeSyncService,
      this.employeeSyncService,
      this.clientSyncService,
      this.contractSyncService,
      this.contractReturnSyncService,
      this.operationSyncService,
      this.paymentSyncService,
      this.serviceSyncService,
      this.productSyncService,
      this.productOperationSyncService,
      this.admissionSyncService) {
    tableSyncs.addAll([
      reginSyncService,
      officeSyncService,
      employeeSyncService,
      clientSyncService,
      contractSyncService,
      contractReturnSyncService,
      operationSyncService,
      paymentSyncService,
      serviceSyncService,
      productSyncService,
      productOperationSyncService,
      admissionSyncService,
    ]);
  }

  @override
  Future<void> incomingSync() async {
    for (var tableSync in tableSyncs) {
      String? lastUpdateDateTime = await keyValueStore.read(tableSync.updateDatetimeKey);
      Map<String, String> params = lastUpdateDateTime == null ? {} : {'datetime': lastUpdateDateTime};

      try {
        final result = await tableSync.incomingSync(params);
        if (result) await keyValueStore.write(tableSync.updateDatetimeKey, dateTimeFormatter.format(DateTime.now().toUtc()));
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Future<void> outgoingSync() async {
    for (var tableSync in tableSyncs) {
      await tableSync.outgoingSync();
    }
  }
}
