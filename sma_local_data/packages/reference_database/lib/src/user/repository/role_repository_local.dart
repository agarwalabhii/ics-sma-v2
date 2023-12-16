import 'package:local_common/database.dart';
import 'package:reference_database/reference_database.dart' as db;
import 'package:reference_database/src/reference_mutate_mixin.dart';
import 'package:reference_database/src/user/table/role_table.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;

part 'role_repository_local.g.dart';

@riverpod
class RoleRepositoryLocal extends _$RoleRepositoryLocal
    with ReferenceMutateMixin<Role, db.RoleData>
    implements LocalCacheRepository<db.RoleData>, TransportStateAware {
  @override
  late final db.ReferenceDatabase database = ref.read(db.ReferenceDatabase.provider);

  @override
  drift.TableInfo<Role, db.RoleData> get table => database.role;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
}
