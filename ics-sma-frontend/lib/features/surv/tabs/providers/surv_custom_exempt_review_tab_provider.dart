import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

final customExemptReviewStateTabProvider = NotifierProvider<
        CustomExempteReviewTabNotifier, CustomExempteReviewTabState>(
    CustomExempteReviewTabNotifier.new);

class CustomExempteReviewTabNotifier
    extends Notifier<CustomExempteReviewTabState> {

  void setIsVisibile(bool? value) {
    if (value == null || !value) {
      state = state.copyWith(isVisible: false);
      return;
    }
    if (value) {
      state = state.copyWith(isVisible: true);
    }
  }

  void isOfficials(bool? value) {
    if (value == null) {
      state = state.copyWith(officialEstabSelected: false);
      return;
    }
    if (value) {
      state = state.copyWith(officialEstabSelected: true);

      return;
    }
    state = state.copyWith(officialEstabSelected: false);
  }

  void isCopyGiven(bool? value) {
    if (value == null) {
      state = state.copyWith(copyGivenSelected: false);

      return;
    }
    if (value) {
      state = state.copyWith(copyGivenSelected: true);
      return;
    }
    state = state.copyWith(copyGivenSelected: false);
  }

  void isSpeciesOther(MultiString? value) {
    if (value == null) {
      state = state.copyWith(speciesOther: false);
      return;
    }
    if (value.length > 0 && value.listValues.contains('OTHE')) {
      state = state.copyWith(speciesOther: true);
      return;
    }
    state = state.copyWith(speciesOther: false);
  }

  void isReviewOther(String? value) {
    if (value == null) {
      state = state.copyWith(recommenedOther: false);
      return;
    }
    if (value.isNotEmpty && value.contains('Other')) {
      state = state.copyWith(recommenedOther: true);
      return;
    }
    state = state.copyWith(recommenedOther: false);
  }

  void setIIC(String input) {
    state = state.copyWith(nameIIC: input);
  }

  void setPHV(String input) {
    state = state.copyWith(nameIIC: input);
  }

  @override
  CustomExempteReviewTabState build() {
    return CustomExempteReviewTabState(
      false,
      false,
      false,
      false,
      false,
      "",
      "",
    );
  }
}

class CustomExempteReviewTabState {
  final bool isVisible;
  final bool officialEstabSelected;
  final bool copyGivenSelected;
  final bool speciesOther;
  final bool recommenedOther;
  final String namePHV;
  final String nameIIC;

  CustomExempteReviewTabState(
      this.isVisible,
    this.officialEstabSelected,
    this.copyGivenSelected,
    this.speciesOther,
    this.recommenedOther,
      this.namePHV,
      this.nameIIC
  );

  CustomExempteReviewTabState copyWith(
      {isVisible,
      officialEstabSelected,
      copyGivenSelected,
      speciesOther,
      recommenedOther,
      namePHV,
      nameIIC}) {
    return CustomExempteReviewTabState(
        isVisible ?? this.isVisible,
        officialEstabSelected ?? this.officialEstabSelected,
        copyGivenSelected ?? this.copyGivenSelected,
        speciesOther ?? this.speciesOther,
        recommenedOther ?? this.recommenedOther,
        namePHV ?? this.namePHV,
        nameIIC ?? this.nameIIC);
  }
}
