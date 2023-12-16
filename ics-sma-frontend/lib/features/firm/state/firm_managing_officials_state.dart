import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class FirmManagingOfficialsState
    implements FirmManagingOfficialsModel {}

class FirmManagingOfficialsStateModel extends FirmManagingOfficialsRepository
    with FirmManagingOfficialsState {
  FirmManagingOfficialsStateModel({required super.modelContext});
}

final firmManagingOfficialsStateProvider =
    StateProvider
    .family<FirmManagingOfficialsState, ModelContext>((ref, modelContext) {
  return FirmManagingOfficialsStateModel(modelContext: modelContext);
});
