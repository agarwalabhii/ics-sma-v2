import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class FirmState implements FirmModel {}

class FirmStateModel extends FirmRepository with FirmState {
  FirmStateModel({required super.modelContext});
}

final firmProvider =
    StateProvider.family<FirmState, ModelContext>((ref, modelContext) {
  return FirmStateModel(modelContext: modelContext);
});
