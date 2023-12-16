import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvShellEggState implements SurvShellEggsModel {}

class SurvShellEggStateModel extends SurvShellEggRepository
    with SurvShellEggState {
  SurvShellEggStateModel({required super.modelContext});
}

final survShellEggStateProvider =
    StateProvider
    .family<SurvShellEggState, ModelContext>((ref, modelContext) {
  return SurvShellEggStateModel(modelContext: modelContext);
});
