import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvState implements SurvModel {}

class SurvStateModel extends SurvRepository with SurvState {
  SurvStateModel({required super.modelContext});
}

final survProvider =
    StateProvider.family<SurvState, ModelContext>((ref, modelContext) {
  return SurvStateModel(modelContext: modelContext);
});
