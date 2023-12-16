import 'dart:async';

import 'package:domain_database/domain_database.dart' as db;
import 'package:drift/drift.dart' as drift;
import 'package:local_common/database.dart';

mixin DomainDeleteMixin<T extends IdentifiableEntity, D extends drift.DataClass> {
  db.DomainDatabase get database;
  drift.TableInfo<T, D> get table;
   Future<int> deleteSingle({required int id, required UpdateStateFunc updateStateFunc}) async {
    print("deleteSingle id: $id");
    return (database.delete(table)..where((t) => t.id.equals(10))).go();
  }
}