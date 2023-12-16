import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/database.dart';
import 'user/table/employee_role_table.dart';
import 'user/table/employee_table.dart';
import 'user/table/role_table.dart';
import 'user/table/user_table.dart';

import 'package:local_common/connection.dart' as impl;

part 'reference_database.g.dart';

@DriftDatabase(tables: [
  Employee,
  EmployeeRole,
  Role,
  User,
])
class ReferenceDatabase extends _$ReferenceDatabase {
  ReferenceDatabase() : super(impl.connect("reference"));

  ReferenceDatabase.forTesting(DatabaseConnection connection) : super(connection);

  @override
  int get schemaVersion => 1;

  static final StateProvider<ReferenceDatabase> provider = StateProvider((ref) {
    final database = ReferenceDatabase();
    ref.onDispose(database.close);

    return database;
  });
}
