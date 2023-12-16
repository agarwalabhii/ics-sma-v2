import 'dart:async';

import 'package:domain_database/domain_database.dart' as db;
import 'package:domain_database/src/local_response_executor.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/database.dart';

mixin DomainMutateMixin<T extends drift.Table, D extends DataClassBehavioral> {
  db.DomainDatabase get database;
  drift.TableInfo<T, D> get table;
  final executor = LocalResponseExecutor<D>();
  
  Future<LocalResponseData<D?>> createSet({required Stream<D> stream, required UpdateStateFunc updateStateFunc}) async {
    var state = executor.start("createSet");
    var count = 0;
    await for (final dataClass in stream) {
      final response = await createSingle(dataClass: dataClass, updateStateFunc: executor.emptyUpdateFunc);
      if (response.error != null && response.transportState != null) {
        updateStateFunc(response.transportState!);
      }
    }
    state = state.copyWith(endTimestamp: DateTime.now(), count: count);
    updateStateFunc(state);
    return LocalResponseData(transportState: state);
  }

  Future<LocalResponseData<D?>> updateSingle({required D dataClass, required UpdateStateFunc updateStateFunc}) async {
    return await executor.call(name: "updateSingle", command: () async {
      await database.into(table).insertOnConflictUpdate(dataClass as drift.Insertable<D>); 
      return dataClass;
    }, updateStateFunc: updateStateFunc);
  }

  Future<LocalResponseData<D?>> createSingle({required D dataClass, required UpdateStateFunc updateStateFunc}) async {
    if (isSparseData(dataClass)) {
      print("Non required row with empty data class");
      return LocalResponseData(body: dataClass);
    }

    return await executor.call(name: "createSingle", command: () async {
      await database.into(table).insertOnConflictUpdate(dataClass as drift.Insertable<D>); 
      return dataClass;
    }, updateStateFunc: updateStateFunc);
  }

  bool isSparseData(D dataClass);
}