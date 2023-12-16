import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvAdditionalInfoState
    implements SurvAdditionalInfoModel {}

class SurvAdditionalInfoStateModel extends SurvAdditionalInfoRepository
    with SurvAdditionalInfoState {
  SurvAdditionalInfoStateModel({required super.modelContext});
}

final survAdditionalInfoStateProvider =
    StateProvider
    .family<SurvAdditionalInfoState, ModelContext>((ref, modelContext) {
  return SurvAdditionalInfoStateModel(modelContext: modelContext);
});
