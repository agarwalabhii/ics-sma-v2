import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvFoodSafetyState implements SurvFoodSafetyModel {}

class SurvFoodSafetyStateModel extends SurvFoodSafetyRepository
    with SurvFoodSafetyState {
  SurvFoodSafetyStateModel({required super.modelContext});
}

final survFoodSafetyStateProvider =
    StateProvider
    .family<SurvFoodSafetyState, ModelContext>((ref, modelContext) {
  return SurvFoodSafetyStateModel(modelContext: modelContext);
});
