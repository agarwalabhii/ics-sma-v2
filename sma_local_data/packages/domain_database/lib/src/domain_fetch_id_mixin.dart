import 'dart:async';

import 'package:domain_database/domain_database.dart' as db;
import 'package:domain_database/src/local_response_executor.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/database.dart';

mixin DomainFetchIdMixin<T extends IdentifiableEntity,
    D extends drift.DataClass> {
  final _executor = LocalResponseExecutor<D>();
  db.DomainDatabase get database;
  drift.TableInfo<T, D> get table;

  Future<LocalResponseData<D?>> fetchById({required int id, required UpdateStateFunc updateStateFunc}) async {
    return await _executor.call(name: "fetchById", command: () async {
      return (database.select(table)
            ..where((t) => t.id.equals(id))
            ..limit(1))
          .getSingleOrNull(); 
    }, updateStateFunc: updateStateFunc);
  }
}
