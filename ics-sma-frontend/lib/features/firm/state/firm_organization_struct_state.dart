import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class FirmOrganizationStructState
    implements FirmOrganizationStructModel {}

class FirmOrganizationStructStateModel extends FirmOrganizationStructRepository
    with FirmOrganizationStructState {
  FirmOrganizationStructStateModel({required super.modelContext});
}

final firmOrganizingStructStateProvider =
    StateProvider
    .family<FirmOrganizationStructState, ModelContext>((ref, modelContext) {
  return FirmOrganizationStructStateModel(modelContext: modelContext);
});
