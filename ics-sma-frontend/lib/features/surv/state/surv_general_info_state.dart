import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvGeneralInfoState implements SurvGeneralInfoModel {}

class SurvGeneralInfoStateModel extends SurvGeneralInfoRepository
    with SurvGeneralInfoState {
  SurvGeneralInfoStateModel({required super.modelContext});
}

final survGeneralInfoStateProvider =
    StateProvider
    .family<SurvGeneralInfoState, ModelContext>((ref, modelContext) {
  return SurvGeneralInfoStateModel(modelContext: modelContext);
});
