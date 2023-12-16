import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/dep/repository/surv/surv_firm_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'surv_firm_repository.g.dart';

@riverpod
class AsyncFirmData extends _$AsyncFirmData {
  AsyncFirmData();

  @override
  FutureOr<SurvFirmModel> build(int survId) async {
    return SurvFirmModel(survId: survId);
  }

  Future<void> load(WidgetRef ref, int survId) async {
    final db = ref.watch(DomainDatabase.provider);
    final surv = await db.byId(survId, db.surv);
    final info = await db.byId(surv?.firmId ?? 0, db.firmGeneralInfo);
    if (info != null) {
      state = AsyncData(_fromCompanion(survId, info.toCompanion(true)));
    } else {
      state = AsyncData(SurvFirmModel(survId: survId));
    }
  }

  SurvFirmModel _fromCompanion(int survId, FirmGeneralInfoCompanion firm) {
    return SurvFirmModel(
      survId: survId,
      firmId: firm.id.value,
      name: firm.name.value,
      doingBusinessAs: firm.doingBusinessAs.value,
      primaryBusinessType: firm.primaryBusinessType.value,
      secondaryBusinessType: firm.secondaryBusinessType.value,
      tertiaryBusinessType: firm.tertiaryBusinessType.value,
    );
  }
}
