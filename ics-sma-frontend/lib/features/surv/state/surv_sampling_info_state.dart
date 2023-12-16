import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvSamplingInfoState implements SurvSamplingInfoModel {}

class SurvSamplingInfoStateModel extends SurvSamplingInfoRepository
    with SurvSamplingInfoState {
  SurvSamplingInfoStateModel({required super.modelContext});
}

final survSamplingInfoStateProvider =
    StateProvider
    .family<SurvSamplingInfoState, ModelContext>((ref, modelContext) {
  return SurvSamplingInfoStateModel(modelContext: modelContext);
});
