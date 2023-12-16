import 'dart:async';

import 'package:drift/drift.dart' as drift;
import 'reference_database.dart' as db;
import 'package:local_common/database.dart';

mixin ReferenceMutateMixin<T extends IdentifiableEntity, D extends DataClassBehavioral> {
  db.ReferenceDatabase get database;
  drift.TableInfo<T, D> get table;
  
  Future<int> createSet({required Stream<D> stream}) async {
    var count = 0;
    await for (final dataClass in stream) {
      await createSingle(dataClass: dataClass);
      count++;
    }
    return count;
  }

  Future<D?> fetchById(int id) async {
    return (database.select(table)
          ..where((t) => t.id.equals(id))
          ..limit(1))
        .getSingleOrNull();
  }

  Future<D> updateSingle({required D dataClass}) async {
    await database.into(table).insertOnConflictUpdate(dataClass as drift.Insertable<D>);
    return dataClass;
  }

  Future<D> createSingle({required D dataClass}) async {
    try {
      await database.into(table).insertOnConflictUpdate(dataClass as drift.Insertable<D>);
    } catch (e) {
      print('Failed: $dataClass');
    }
    return dataClass;
  }

  Future<bool> deleteSingle({required int id}) {
    throw UnimplementedError();
  }
}