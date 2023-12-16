import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvNonFoodSafetyState implements SurvNonFoodSafetyModel {}

class SurvNonFoodSafetyStateModel extends SurvNonFoodSafetyRepository
    with SurvNonFoodSafetyState {
  SurvNonFoodSafetyStateModel({required super.modelContext});
}

final survNonFoodSafetyStateProvider =
    StateProvider
    .family<SurvNonFoodSafetyState, ModelContext>((ref, modelContext) {
  return SurvNonFoodSafetyStateModel(modelContext: modelContext);
});
