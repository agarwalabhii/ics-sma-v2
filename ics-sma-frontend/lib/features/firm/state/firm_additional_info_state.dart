import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class FirmAdditionalInfoState
    implements FirmAdditionalInfoModel {}

class FirmAdditionalInfoStateModel extends FirmAdditionalInfoRepository
    with FirmAdditionalInfoState {
  FirmAdditionalInfoStateModel({required super.modelContext});
}

final firmAdditionalInfoStateProvider =
    StateProvider.family<FirmAdditionalInfoState, ModelContext>(
        (ref, modelContext) {
  return FirmAdditionalInfoStateModel(modelContext: modelContext);
});
