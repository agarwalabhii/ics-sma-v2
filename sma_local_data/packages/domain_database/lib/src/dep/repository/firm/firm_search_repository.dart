import 'package:domain_database/domain_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';

class FirmSearchRepository {
  Future<bool> search(WidgetRef ref, int firmId) async {
    final db = ref.watch(DomainDatabase.provider);
    final locationRef =
        await db.locationDao.refsBy(firmId, LocationRefType.firmMain);
    return (locationRef != null);
  }
}
