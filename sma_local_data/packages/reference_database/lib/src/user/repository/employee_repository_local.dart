import 'package:local_common/database.dart';
import 'package:reference_database/reference_database.dart' as db;
import 'package:reference_database/src/reference_mutate_mixin.dart';
import 'package:reference_database/src/user/table/employee_table.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;

part 'employee_repository_local.g.dart';

@riverpod
class EmployeeRepositoryLocal extends _$EmployeeRepositoryLocal
    with ReferenceMutateMixin<Employee, db.EmployeeData>
    implements LocalCacheRepository<db.EmployeeData>, TransportStateAware {

  @override
  late final db.ReferenceDatabase database = ref.read(db.ReferenceDatabase.provider);

  @override
  drift.TableInfo<Employee, db.EmployeeData> get table => database.employee;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
}
