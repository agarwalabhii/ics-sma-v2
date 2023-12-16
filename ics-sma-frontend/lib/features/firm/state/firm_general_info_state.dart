import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class FirmGeneralInfoState implements FirmGeneralInfoModel {}

class FirmGeneralInfoStateModel extends FirmGeneralInfoRepository
    with FirmGeneralInfoState {
  FirmGeneralInfoStateModel({required super.modelContext});
}

final firmGeneralInfoStateProvider =
    StateProvider
    .family<FirmGeneralInfoState, ModelContext>((ref, modelContext) {
  return FirmGeneralInfoStateModel(modelContext: modelContext);
});
