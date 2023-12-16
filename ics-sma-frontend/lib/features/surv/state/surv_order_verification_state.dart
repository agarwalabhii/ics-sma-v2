import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class SurvOrderVerificationState
    implements SurvOrderVerificationModel {}

class SurvOrderVerificationStateModel extends SurvOrderVerificationRepository
    with SurvOrderVerificationState {
  SurvOrderVerificationStateModel({required super.modelContext});
}

final survOrderVerificationStateProvider =
    StateProvider
    .family<SurvOrderVerificationState, ModelContext>((ref, modelContext) {
  return SurvOrderVerificationStateModel(modelContext: modelContext);
});
