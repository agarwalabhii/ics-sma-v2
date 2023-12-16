import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvImportedProductState
    implements SurvImportedProductModel {}

class SurvImportedProductStateModel extends SurvImportedProductRepository
    with SurvImportedProductState {
  SurvImportedProductStateModel({required super.modelContext});
}

final survImportedProductStateProvider =
    StateProvider
    .family<SurvImportedProductState, ModelContext>((ref, modelContext) {
  return SurvImportedProductStateModel(modelContext: modelContext);
});
