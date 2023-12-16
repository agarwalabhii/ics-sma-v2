import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvCustomExemptReviewState
    implements SurvCustomExemptReviewModel {}

class SurvCustomExemptReviewStateModel extends SurvCustomExemptReviewRepository
    with SurvCustomExemptReviewState {
  SurvCustomExemptReviewStateModel({required super.modelContext});
}

final survCustomExemptReviewStateProvider =
    StateProvider
    .family<SurvCustomExemptReviewState, ModelContext>((ref, modelContext) {
  return SurvCustomExemptReviewStateModel(modelContext: modelContext);
});
