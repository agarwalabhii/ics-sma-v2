import 'package:flutter_riverpod/flutter_riverpod.dart';

final survSamplingInfoTabProvider =
    StateNotifierProvider<SamplingInfoTabNotifier, SamplingInfoTabState>(
  (ref) =>
      SamplingInfoTabNotifier(SamplingInfoTabState(false, false, false, false)),
);

class SamplingInfoTabNotifier extends StateNotifier<SamplingInfoTabState> {
  SamplingInfoTabNotifier(SamplingInfoTabState state) : super(state);

  void checkVisibility(bool? value) {
    if (value == null) {
      state = state.copyWith(isVisibleQuestions: false, showNoReason: false);
      return;
    }
    if (value) {
      state = state.copyWith(isVisibleQuestions: true, showNoReason: false);
      return;
    }
    state = state.copyWith(isVisibleQuestions: false, showNoReason: true);
  }

  void checkMt(String? input) {
    if (input == null) {
      state = state.copyWith(mt0506: false);
      return;
    }
    if (input.contains("MT05") || input.contains("MT06")) {
      state = state.copyWith(mt0506: true);
      return;
    }
    state = state.copyWith(mt0506: false);
  }

  void checkSPInvestigations(String? input) {
    if (input == null) {
      state = state.copyWith(spInvest: false);
      return;
    }
    if (input.contains("Special Project") ||
        input.contains("Investigative Sample")) {
      state = state.copyWith(spInvest: true);
      return;
    }
    state = state.copyWith(spInvest: false);
  }
}

class SamplingInfoTabState {
  final bool? isVisibleQuestions;
  final bool showNoReason;
  final bool mt0506;
  final bool spInvest;

  SamplingInfoTabState(
      this.isVisibleQuestions, this.mt0506, this.spInvest, this.showNoReason);

  SamplingInfoTabState copyWith(
      {isVisibleQuestions, mt0506, spInvest, showNoReason}) {
    return SamplingInfoTabState(
        isVisibleQuestions ?? this.isVisibleQuestions,
        mt0506 ?? this.mt0506,
        spInvest ?? this.spInvest,
        showNoReason ?? this.showNoReason);
  }
}
