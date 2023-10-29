import 'dart:io';

import 'package:drift/drift.dart';
import 'package:hasap_admin/core/datebase/tables/region_table.dart';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'datebase.g.dart';

@DriftDatabase(tables: [RegionTable])
class AppDateBase extends _$AppDateBase {
  AppDateBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
