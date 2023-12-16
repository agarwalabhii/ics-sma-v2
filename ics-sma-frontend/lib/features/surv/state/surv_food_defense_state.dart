import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvFoodDefenseState implements SurvFoodDefenseModel {}

class SurvFoodDefenseStateModel extends SurvFoodDefenseRepository
    with SurvFoodDefenseState {
  SurvFoodDefenseStateModel({required super.modelContext});
}

final survFoodDefenseStateProvider =
    StateProvider
    .family<SurvFoodDefenseState, ModelContext>((ref, modelContext) {
  return SurvFoodDefenseStateModel(modelContext: modelContext);
});
