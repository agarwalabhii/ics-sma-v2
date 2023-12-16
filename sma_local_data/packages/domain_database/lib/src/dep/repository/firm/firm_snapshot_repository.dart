import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/dep/repository/firm/firm_snapshot_model.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firm_snapshot_repository.g.dart';

@riverpod
class AsyncFirmSnapshot extends _$AsyncFirmSnapshot {
  @override
  FutureOr<FirmSnapshotRepository?> build(firmId) {
    return load(ref, firmId);
  }
}

class FirmSnapshotRepository implements FirmSnapshotModel {
  final FirmSnapshotViewData data;

  FirmSnapshotRepository({required this.data});

  //
  // Field methods
  //

  @override
  int? get firmId => data.firmId;

  @override
  String? get name => data.name;

  @override
  String? get primaryBusinessType => data.primaryBusinessType;

  @override
  int? get creatorId => data.creatorId;

  @override
  RecordStatus? get recordStatus => RecordStatus.values[data.recordStatus ?? 0];

  @override
  DateTime? get lastSurveillancePerformed => data.datePerformed;
}

Future<FirmSnapshotRepository?> load(ref, int firmId) async {
  try {
    final db = ref.watch(DomainDatabase.provider);
    final result = await db.fetchFirmSnapshotView(firmId);
    return FirmSnapshotRepository(data: result);
  } catch (e) {
    print("FirmSnapshotRepository load error: $e");
  }
  return FirmSnapshotRepository(
    data: FirmSnapshotViewData(firmId: firmId, name: "N/A", primaryBusinessType: "N/A",
    creatorId: 0,
    recordStatus: RecordStatus.draft.index, datePerformed: DateTime.now())
  );
}
