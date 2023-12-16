import 'package:flutter_riverpod/flutter_riverpod.dart';

final miscSectionStateProvider =
    StateNotifierProvider<MiscSectionNotifier, MiscSectionState>(
  (ref) => MiscSectionNotifier(
    MiscSectionState(
      null,
      "",
      "",
      "",
      "",
    ),
  ),
);

class MiscSectionNotifier extends StateNotifier<MiscSectionState> {
  MiscSectionNotifier(super.state);

  void setNumberOfFloors(String input) {
    state = state.copyWith(numOfFloors: input);
  }

  void setApproxSqFootage(String input) {
    state = state.copyWith(approxSqFootage: input);
  }

  void setApproxNumberEmployee(String input) {
    state = state.copyWith(approxNumberOfEmployee: input);
  }

  void setBackupEnergy(String input) {
    state = state.copyWith(backupEnergy: input);
  }

  void setFirmRegistered(String input) {
    state = state.copyWith(backupEnergy: input);
  }
}

class MiscSectionState {
  String? approxNumberOfEmployee;
  String numOfFloors;
  String approxSqFootage;
  String backupEnergy;
  String firmRegistered;

  MiscSectionState(this.approxNumberOfEmployee, this.approxSqFootage,
      this.numOfFloors, this.backupEnergy, this.firmRegistered);

  MiscSectionState copyWith(
      {approxNumberOfEmployee,
      numOfFloors,
      approxSqFootage,
      backupEnergy,
      firmRegistered}) {
    return MiscSectionState(
        approxNumberOfEmployee ?? this.approxNumberOfEmployee,
        approxSqFootage ?? this.approxSqFootage,
        numOfFloors ?? this.numOfFloors,
        backupEnergy ?? this.backupEnergy,
        firmRegistered ?? this.firmRegistered);
  }
}
