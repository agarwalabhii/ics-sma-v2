import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/dep/repository/surv/surv_snapshot_model.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'surv_snapshot_repository.g.dart';

@riverpod
class AsyncSurvSnapshot extends _$AsyncSurvSnapshot {
  @override
  FutureOr<SurvSnapshotRepository?> build(int survId) {
    return load(ref, survId);
  }
}

class SurvSnapshotRepository implements SurvSnapshotModel {
  final SurvSnapshotViewData? data;

  SurvSnapshotRepository({required this.data});

  //
  // Field methods
  //

  @override
  int? get id => data?.id;

  @override
  int? get firmId => data?.firmId;

  @override
  String? get firmName => data?.name;

  @override
  DateTime? get datePerformed => data?.datePerformed;

  @override
  int? get creatorId => data?.creatorId;

  @override
  RecordStatus? get recordStatus => data?.recordStatus;
}

Future<SurvSnapshotRepository?> load(ref, int survId) async {
  try {
    final db = ref.watch(DomainDatabase.provider);
    final result = await db.fetchFirmSnapshotView(survId);
    return SurvSnapshotRepository(data: result);
  } catch (e) {
    print("FirmSnapshotRepository load error: $e");
  }
  return SurvSnapshotRepository(
    data: SurvSnapshotViewData(id: survId, name: "N/A",
    creatorId: 0, recordStatus: RecordStatus.draft, datePerformed: DateTime.now())
  );
}
