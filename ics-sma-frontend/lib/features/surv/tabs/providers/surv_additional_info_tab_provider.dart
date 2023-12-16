import 'package:flutter_riverpod/flutter_riverpod.dart';

final additionalInfoStateTabProvider =
    StateNotifierProvider<AdditionalInfoTabNotifier, AdditionalInfoTabState>(
        (ref) => AdditionalInfoTabNotifier(ref));

class AdditionalInfoTabNotifier extends StateNotifier<AdditionalInfoTabState> {
  AdditionalInfoTabNotifier(this.ref)
      : super(AdditionalInfoTabState(
          false, //isVisibleQ bool
          false, //monthsVisible bool
          false, //followUpComplete bool
          false, //FollowUp bool?
          null, //referFindings bool?
          null, //followupCommentsVisible bool?
          "", //rep1name String
          "", //rep2name String
          "", //rep1title String
          "", //rep2title String
          "1 Month", //monthsValue String
          null, //investigatorMeetRep bool?
          "",
          "",
          "",
          null,
          null,
        ));
  final StateNotifierProviderRef ref;

  void setReferralComments(String input) {
    state = state.copyWith(referralComments: input);
  }

  void setAdditionalComments(String input) {
    state = state.copyWith(additionalComments: input);
  }

  void setFollowUpComments(String input) {
    state = state.copyWith(followUpComments: input);
  }

  void setFollowUpDate(DateTime input) {
    state = state.copyWith(followUpDate: input);
  }

  void setInvestigatorMeetRep(bool? value) {
    if (value == null) {
      state = state.copyWith(investigatorMeetRep: null);
      return;
    }
    if (value) {
      state = state.copyWith(investigatorMeetRep: true);
      return;
    }
    state = state.copyWith(investigatorMeetRep: false);
  }

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

  void setFollowUpRequired(bool? value) {
    if (value == null) {
      state = state.copyWith(followUpRequired: null);
      return;
    }
    if (value) {
      state = state.copyWith(followUpRequired: true);
      return;
    }
    state = state.copyWith(followUpRequired: false);
  }

  void checkFollowUp(bool? value) {
    setFollowUpRequired(value);
    if (value == null || !value) {
      state = state.copyWith(monthsVisible: false);
      return;
    }
    if (value) {
      state = state.copyWith(monthsVisible: true);
      return;
    }
  }

  void checkFollowUpPrevious(bool? value) {
    if (value == null) {
      state = state.copyWith(followUpCommentsVisible: null);
      return;
    }
    if (value) {
      state = state.copyWith(followUpCommentsVisible: true);
      return;
    }
    state = state.copyWith(followUpCommentsVisible: false);
  }

  void referFindings(bool? value) {
    if (value == null) {
      state = state.copyWith(referFindings: null);
      return;
    }
    if (value) {
      state = state.copyWith(referFindings: true);
      return;
    }
    state = state.copyWith(referFindings: false);
  }

  void setRep1Name(String? name) {
    if (name == null) {
      return;
    }
    if (name.isNotEmpty) {
      state = state.copyWith(rep1Name: name);
      return;
    }
  }

  void setRep2Name(String? name) {
    if (name == null) {
      return;
    }
    if (name.isNotEmpty) {
      state = state.copyWith(rep2Name: name);
      return;
    }
  }

  void setRep1Title(String? name) {
    if (name == null) {
      return;
    }
    if (name.isNotEmpty) {
      state = state.copyWith(rep1Title: name);
      return;
    }
  }

  void setRep2Title(String? name) {
    if (name == null) {
      return;
    }
    if (name.isNotEmpty) {
      state = state.copyWith(rep2Title: name);
      return;
    }
  }

  void setMonthsValue(String? name) {
    if (name == null) {
      return;
    }
    if (name.isNotEmpty) {
      state = state.copyWith(monthsValue: name);
      return;
    }
  }

  void setFollowUpComplete(bool? value) {
    if (value == null || !value) {
      state = state.copyWith(followUpComplete: false);
      return;
    }
    if (value) {
      state = state.copyWith(followUpComplete: true);
      return;
    }
  }
}

class AdditionalInfoTabState {
  final bool isVisibleQuestions;
  final bool monthsVisible;
  final bool followUpComplete;
  final bool followUp;
  final bool? referFindings;
  final bool? followUpCommentsVisible;
  final String rep1Name;
  final String rep2Name;
  final String rep1Title;
  final String rep2Title;
  final String monthsValue;
  final bool? investigatorMeetRep;
  final String referralComments;
  final String additionalComments;
  final String followUpComments;
  final DateTime? followUpDate;
  final bool? followUpRequired;

  AdditionalInfoTabState(
    this.isVisibleQuestions,
    this.monthsVisible,
    this.followUpComplete,
    this.followUp,
    this.referFindings,
    this.followUpCommentsVisible,
    this.rep1Name,
    this.rep2Name,
    this.rep1Title,
    this.rep2Title,
    this.monthsValue,
    this.investigatorMeetRep,
    this.referralComments,
    this.additionalComments,
    this.followUpComments,
    this.followUpDate,
    this.followUpRequired,
  );

  AdditionalInfoTabState copyWith(
      {isVisibleQuestions,
      monthsVisible,
    followUpComplete,
      followUp,
      referFindings,
      followUpCommentsVisible,
      rep1Name,
      rep2Name,
      rep1Title,
      rep2Title,
    String? monthsValue,
      investigatorMeetRep,
    referralComments,
    additionalComments,
    followUpComments,
    followUpDate,
    followUpRequired,
  }) {
    return AdditionalInfoTabState(
      isVisibleQuestions ?? this.isVisibleQuestions,
      monthsVisible ?? this.monthsVisible,
      followUpComplete ?? this.followUpComplete,
      followUp ?? this.followUp,
      referFindings ?? this.referFindings,
      followUpCommentsVisible ?? this.followUpCommentsVisible,
      rep1Name ?? this.rep1Name,
      rep2Name ?? this.rep2Name,
      rep1Title ?? this.rep1Title,
      rep2Title ?? this.rep2Title,
      monthsValue ?? this.monthsValue,
      investigatorMeetRep ?? this.investigatorMeetRep,
      referralComments ?? this.referralComments,
      additionalComments ?? this.additionalComments,
      followUpComments ?? this.followUpComments,
      followUpDate ?? this.followUpDate,
      followUpRequired ?? this.followUpRequired,
    );
  }
}
