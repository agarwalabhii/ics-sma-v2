import 'package:domain_database/src/domain_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;

final activeFirmProvider =
    StateProvider.autoDispose.family<FirmCompanion, int>((ref, id) {
  return FirmCompanion(id: drift.Value(id));
});
