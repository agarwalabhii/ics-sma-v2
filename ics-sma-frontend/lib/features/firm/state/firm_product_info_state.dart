import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class FirmProductInfoState implements FirmProductInfoModel {}

class FirmProductInfoStateModel extends FirmProductInfoRepository
    with FirmProductInfoState {
  FirmProductInfoStateModel({required super.modelContext});
}

final firmProductInfoStateProvider =
    StateProvider
    .family<FirmProductInfoState, ModelContext>((ref, modelContext) {
  return FirmProductInfoStateModel(modelContext: modelContext);
});
