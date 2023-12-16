import 'package:local_common/database.dart';
import 'package:reference_database/reference_database.dart' as db;
import 'package:reference_database/src/reference_mutate_mixin.dart';
import 'package:reference_database/src/user/table/user_table.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
part 'user_repository_local.g.dart';

@riverpod
class UserRepositoryLocal extends _$UserRepositoryLocal
    with ReferenceMutateMixin<User, db.UserData>
    implements LocalCacheRepository<db.UserData>, TransportStateAware {
  @override
  late final db.ReferenceDatabase database = ref.read(db.ReferenceDatabase.provider);

  @override
  drift.TableInfo<User, db.UserData> get table => database.user;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<db.UserData?> fetchByEAuthId(String eauthId) async {
    return (database.select(database.user)
          ..where((t) => t.eauthId.equals(eauthId))
          ..limit(1))
        .getSingleOrNull();
  }
}
