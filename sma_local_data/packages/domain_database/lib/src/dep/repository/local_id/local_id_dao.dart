import 'package:domain_database/domain_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';

class LocalIdRepository {
  Future<int> generateNewId(WidgetRef ref, Feature feature) {
    final db = ref.watch(DomainDatabase.provider);
    return db.generateNewId(feature);
  }
}
