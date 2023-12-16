import 'package:flutter_riverpod/flutter_riverpod.dart';

final survFoodDefenseTabProvider =
    StateNotifierProvider<FoodDefenseTabNotifier, FoodDefenseTabState>(
  (ref) => FoodDefenseTabNotifier(
      FoodDefenseTabState(false, false, false, false, false, false, false)),
);

class FoodDefenseTabNotifier extends StateNotifier<FoodDefenseTabState> {
  FoodDefenseTabNotifier(FoodDefenseTabState state) : super(state);

  void checkVisibility(bool? value) {
    if (value == null || !value) {
      state = state.copyWith(isVisibleQuestions: false);
      return;
    }
    if (value) {
      state = state.copyWith(isVisibleQuestions: true);
      return;
    }
  }

  void checkMeat(bool value) {
    state = state.copyWith(meatCheck: value);
  }

  void checkEgg(bool value) {
    state = state.copyWith(eggCheck: value);
  }

  void checkShellEgg(bool value) {
    state = state.copyWith(shellEggCheck: value);
  }

  void checkSiluriformes(bool value) {
    state = state.copyWith(siluriformesFishCheck: value);
  }

  void checkNonAmenable(bool value) {
    state = state.copyWith(nonAmenableCheck: value);
  }

  void checkPoultry(bool value) {
    state = state.copyWith(poultryCheck: value);
  }
}

class FoodDefenseTabState {
  final bool isVisibleQuestions;
  final bool meatCheck;
  final bool eggCheck;
  final bool shellEggCheck;
  final bool poultryCheck;
  final bool nonAmenableCheck;
  final bool siluriformesFishCheck;

  FoodDefenseTabState(
      this.isVisibleQuestions,
      this.eggCheck,
      this.shellEggCheck,
      this.poultryCheck,
      this.meatCheck,
      this.nonAmenableCheck,
      this.siluriformesFishCheck);

  FoodDefenseTabState copyWith(
      {isVisibleQuestions,
      meatCheck,
      eggCheck,
      shellEggCheck,
      poultryCheck,
      siluriformesFishCheck,
      nonAmenableCheck}) {
    return FoodDefenseTabState(
        isVisibleQuestions ?? this.isVisibleQuestions,
        meatCheck ?? this.meatCheck,
        eggCheck ?? this.eggCheck,
        shellEggCheck ?? this.shellEggCheck,
        poultryCheck ?? this.poultryCheck,
        siluriformesFishCheck ?? this.siluriformesFishCheck,
        nonAmenableCheck ?? this.nonAmenableCheck);
  }
}
