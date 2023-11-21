import 'package:hasap_admin/arch/key_value_store_migrator/key_value_store.dart';

abstract class TableSync<T> {
  TypeStoreKey<String> get updateDatetimeKey;

  Future<void> incomingSync(Map<String, String> params);

  Future<void> outgoingSync();
}