import 'package:flutter_riverpod/flutter_riverpod.dart';

final hoursOfOperationStateProvider =
    StateNotifierProvider<HoursOfOperationNotifier, HoursState>(
        (ref) => HoursOfOperationNotifier(HoursState(
              false,
              false,
              false,
              false,
              false,
              false,
              false,
              "08:00",
              "08:00",
              "08:00",
              "08:00",
              "08:00",
              "08:00",
              "08:00",
              "17:00",
              "17:00",
              "17:00",
              "17:00",
              "17:00",
              "17:00",
              "17:00",
              false,
            )));

class HoursOfOperationNotifier extends StateNotifier<HoursState> {
  HoursOfOperationNotifier(super.state);

  void setMondayHours(bool? input) {
    state = state.copyWith(mondayHours: input ?? false);
  }

  void setTuesdayHours(bool? input) {
    state = state.copyWith(tuesdayHours: input ?? false);
  }

  void setWednesdayHours(bool? input) {
    state = state.copyWith(wednesdayHours: input ?? false);
  }

  void setThursdayHours(bool? input) {
    state = state.copyWith(thursdayHours: input ?? false);
  }

  void setFridayHours(bool? input) {
    state = state.copyWith(fridayHours: input ?? false);
  }

  void setSaturdayHours(bool? input) {
    state = state.copyWith(saturdayHours: input ?? false);
  }

  void setSundayHours(bool? input) {
    state = state.copyWith(sundayHours: input ?? false);
  }

  void setMondayOpen(String? input) {
    state = state.copyWith(mondayOpen: input);
  }

  void setTuesdayOpen(String? input) {
    state = state.copyWith(tuesdayOpen: input);
  }

  void setWednesdayOpen(String? input) {
    state = state.copyWith(wednesdayOpen: input);
  }

  void setThursdayOpen(String? input) {
    state = state.copyWith(thursdayOpen: input);
  }

  void setFridayOpen(String? input) {
    state = state.copyWith(fridayOpen: input);
  }

  void setSaturdayOpen(String? input) {
    state = state.copyWith(saturdayOpen: input);
  }

  void setSundayOpen(String? input) {
    state = state.copyWith(sundayOpen: input);
  }

  void setMondayClose(String? input) {
    state = state.copyWith(mondayClose: input);
  }

  void setTuesdayClose(String? input) {
    state = state.copyWith(tuesdayClose: input);
  }

  void setWednesdayClose(String? input) {
    state = state.copyWith(wednesdayClose: input);
  }

  void setThursdayClose(String? input) {
    state = state.copyWith(thursdayClose: input);
  }

  void setFridayClose(String? input) {
    state = state.copyWith(fridayClose: input);
  }

  void setSaturdayClose(String? input) {
    state = state.copyWith(saturdayClose: input);
  }

  void setSundayClose(String? input) {
    state = state.copyWith(sundayClose: input);
  }

  void setApplyToAll(bool? input) {
    state = state.copyWith(
      applyToAll: input,
      tuesdayOpen: state.mondayOpen,
      tuesdayClose: state.mondayClose,
      wednesdayOpen: state.mondayOpen,
      wednesdayClose: state.mondayClose,
      thursdayOpen: state.mondayOpen,
      thursdayClose: state.mondayClose,
      fridayOpen: state.mondayOpen,
      fridayClose: state.mondayClose,
      saturdayOpen: state.mondayOpen,
      saturdayClose: state.mondayClose,
      sundayOpen: state.mondayOpen,
      sundayClose: state.mondayClose,
    );
  }

  void setDeselectApplyToAll(bool? input) {
    state = state.copyWith(
      applyToAll: input,
      tuesdayOpen: "00:00",
      tuesdayClose: "00:00",
      wednesdayOpen: "00:00",
      wednesdayClose: "00:00",
      thursdayOpen: "00:00",
      thursdayClose: "00:00",
      fridayOpen: "00:00",
      fridayClose: "00:00",
      saturdayOpen: "00:00",
      saturdayClose: "00:00",
      sundayOpen: "00:00",
      sundayClose: "00:00",
    );
  }
}

class HoursState {
  final bool? mondayHours;
  final bool? tuesdayHours;
  final bool? wednesdayHours;
  final bool? thursdayHours;
  final bool? fridayHours;
  final bool? saturdayHours;
  final bool? sundayHours;
  final String? mondayOpen;
  final String? tuesdayOpen;
  final String? wednesdayOpen;
  final String? thursdayOpen;
  final String? fridayOpen;
  final String? saturdayOpen;
  final String? sundayOpen;
  final String? mondayClose;
  final String? tuesdayClose;
  final String? wednesdayClose;
  final String? thursdayClose;
  final String? fridayClose;
  final String? saturdayClose;
  final String? sundayClose;
  final bool applyToAll;

  HoursState(
    this.mondayHours,
    this.tuesdayHours,
    this.wednesdayHours,
    this.thursdayHours,
    this.fridayHours,
    this.saturdayHours,
    this.sundayHours,
    this.mondayOpen,
    this.tuesdayOpen,
    this.wednesdayOpen,
    this.thursdayOpen,
    this.fridayOpen,
    this.saturdayOpen,
    this.sundayOpen,
    this.mondayClose,
    this.tuesdayClose,
    this.wednesdayClose,
    this.thursdayClose,
    this.fridayClose,
    this.saturdayClose,
    this.sundayClose,
    this.applyToAll,
  );

  HoursState copyWith({
    mondayHours,
    tuesdayHours,
    wednesdayHours,
    thursdayHours,
    fridayHours,
    saturdayHours,
    sundayHours,
    mondayOpen,
    tuesdayOpen,
    wednesdayOpen,
    thursdayOpen,
    fridayOpen,
    saturdayOpen,
    sundayOpen,
    mondayClose,
    tuesdayClose,
    wednesdayClose,
    thursdayClose,
    fridayClose,
    saturdayClose,
    sundayClose,
    applyToAll,
  }) {
    return HoursState(
      mondayHours ?? this.mondayHours,
      tuesdayHours ?? this.tuesdayHours,
      wednesdayHours ?? this.wednesdayHours,
      thursdayHours ?? this.thursdayHours,
      fridayHours ?? this.fridayHours,
      saturdayHours ?? this.saturdayHours,
      sundayHours ?? this.sundayHours,
      mondayOpen ?? this.mondayOpen,
      tuesdayOpen ?? this.tuesdayOpen,
      wednesdayOpen ?? this.wednesdayOpen,
      thursdayOpen ?? this.thursdayOpen,
      fridayOpen ?? this.fridayOpen,
      saturdayOpen ?? this.saturdayOpen,
      sundayOpen ?? this.sundayOpen,
      mondayClose ?? this.mondayClose,
      tuesdayClose ?? this.tuesdayClose,
      wednesdayClose ?? this.wednesdayClose,
      thursdayClose ?? this.thursdayClose,
      fridayClose ?? this.fridayClose,
      saturdayClose ?? this.saturdayClose,
      sundayClose ?? this.sundayClose,
      applyToAll ?? this.applyToAll,
    );
  }
}
