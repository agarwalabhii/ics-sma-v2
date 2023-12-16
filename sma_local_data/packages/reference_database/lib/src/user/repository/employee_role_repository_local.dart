import 'package:local_common/database.dart';
import 'package:reference_database/reference_database.dart' as db;
import 'package:reference_database/src/reference_mutate_mixin.dart';
import 'package:reference_database/src/user/table/employee_role_table.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;

part 'employee_role_repository_local.g.dart';

@riverpod
class EmployeeRoleRepositoryLocal extends _$EmployeeRoleRepositoryLocal
    with ReferenceMutateMixin<EmployeeRole, db.EmployeeRoleData>
    implements LocalCacheRepository<db.EmployeeRoleData>, TransportStateAware {

  @override
  late final db.ReferenceDatabase database = ref.read(db.ReferenceDatabase.provider);

  @override
  drift.TableInfo<EmployeeRole, db.EmployeeRoleData> get table => database.employeeRole;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  FutureOr<List<db.EmployeeRoleData>> fetchAllByEmployeeId(int employeeId) {
    return (database.select(table)
          ..where((t) => t.employeeId.equals(employeeId))
    ).get();
  }
}
