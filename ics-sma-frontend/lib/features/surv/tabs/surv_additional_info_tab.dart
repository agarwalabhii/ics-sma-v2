import 'package:anet/features/surv/state/surv_additional_info_state.dart';
import 'package:anet/features/surv/tabs/providers/surv_additional_info_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';

class SurvAdditionalInfoTab extends ConsumerWidget {
  final SurvAdditionalInfoState state;

  const SurvAdditionalInfoTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final tabStateProvider = ref.watch(additionalInfoStateTabProvider);
    final tabStateNotifier = ref.watch(additionalInfoStateTabProvider.notifier);

    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    final bool openReps =
        state.investigatorMeetRep ?? tabStateProvider.isVisibleQuestions;
    final bool referFindingsVisible = state.investigatorReferFindings ??
        tabStateProvider.referFindings ??
        false;
    final bool followUpMonthsVisible =
        state.isFollowUp ?? tabStateProvider.monthsVisible;

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10, right: 5),
      child: Form(
        child: FocusTraversalGroup(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExpandedRow(
                  children: [
                    SelectionRowWidget(
                      label: AppLocalizations.of(context)!
                          .meet_with_firm_rep_label,
                      readOnly: state.featureMode.viewMode,
                      setValue: (value) {
                        state.setInvestigatorMeetRep(ref, value);
                        tabStateNotifier.checkVisibility(value);
                        tabStateNotifier.setInvestigatorMeetRep(value);
                      },
                      initialValue: state.investigatorMeetRep ??
                          tabStateProvider.investigatorMeetRep,
                    ),
                  ],
                ),
                ExpandedRow(
                  isVisible: openReps,
                  children: [
                    textFieldBuilder.build(
                        readOnlyOverride: state.featureMode.viewMode,
                        label: AppLocalizations.of(context)!.rep_1_name_label,
                        initialValue: state.firmRepresentative1 ??
                            tabStateProvider.rep1Name,
                        onChanged: (value) {
                          state.setFirmRepresentative1(ref, value);
                          tabStateNotifier.setRep1Name(value);
                        },
                        maxLength: 80),
                    textFieldBuilder.build(
                      label: AppLocalizations.of(context)!.rep_1_title_label,
                      readOnlyOverride: state.featureMode.viewMode,
                      initialValue: state.firmRepresentativeTitle1 ??
                          tabStateProvider.rep1Title,
                      onChanged: (String value) {
                        state.setFirmRepresentativeTitle1(ref, value);
                        tabStateNotifier.setRep1Title(value);
                      },
                    ),
                  ],
                ),
                ExpandedRow(
                  isVisible: openReps,
                  children: [
                    textFieldBuilder.build(
                        readOnlyOverride: state.featureMode.viewMode,
                        label: AppLocalizations.of(context)!.rep_2_name_label,
                        initialValue: state.firmRepresentative2 ??
                            tabStateProvider.rep2Name,
                        onChanged: (String value) {
                          state.setFirmRepresentative2(ref, value);
                          tabStateNotifier.setRep2Name(value);
                        }),
                    textFieldBuilder.build(
                        label: AppLocalizations.of(context)!.rep_2_title_label,
                        readOnlyOverride: state.featureMode.viewMode,
                        initialValue: state.firmRepresentativeTitle2 ??
                            tabStateProvider.rep2Title,
                        onChanged: (String value) {
                          state.setFirmRepresentativeTitle2(ref, value);
                          tabStateNotifier.setRep2Title(value);
                        }),
                  ],
                ),
                ExpandedRow(
                  children: [
                    SelectionRowWidget(
                      label: AppLocalizations.of(context)!.refer_findings_label,
                      readOnly: state.featureMode.viewMode,
                      setValue: (value) {
                        state.setInvestigatorReferFindings(ref, value);
                        tabStateNotifier.referFindings(value);
                      },
                      initialValue: state.investigatorReferFindings ??
                          tabStateProvider.referFindings,
                    ),
                  ],
                ),
                ExpandedRow(
                  isVisible: referFindingsVisible,
                  children: [
                    textFieldBuilder.build(
                      label:
                          AppLocalizations.of(context)!.comments_referral_label,
                      readOnlyOverride: state.featureMode.viewMode,
                      maxLength: 80,
                      initialValue: state.referralComments ??
                          tabStateProvider.referralComments,
                      onChanged: (value) {
                        state.setReferralComments(ref, value);
                        tabStateNotifier.setReferralComments(value);
                      },
                      maxLinesOverride: 3,
                    ),
                  ],
                ),
                const ExpandedRow(
                  children: [
                    Divider(),
                  ],
                ),
                ExpandedRow(
                  padding: const EdgeInsets.all(4.0),
                  children: [
                    Text(
                      AppLocalizations.of(context)!
                          .surv_add_info_follow_up_label,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ExpandedRow(
                  children: [
                    SelectionRowWidget(
                      label: AppLocalizations.of(context)!
                          .follow_up_required_label,
                      readOnly: state.featureMode.viewMode,
                      setValue: (value) {
                        state.setIsFollowUp(ref, value);
                        tabStateNotifier.checkFollowUp(value);
                      },
                      initialValue:
                          state.isFollowUp ?? tabStateProvider.followUpRequired,
                    )
                  ],
                ),
                ExpandedRow(
                  isVisible: followUpMonthsVisible,
                  children: [
                    MonthsSelector(
                        updateMonths: (key, value) {
                          state.setFollowUpMonths(ref, value);
                          tabStateNotifier.setMonthsValue(value);
                        },
                        keyString: state.followUpMonths ??
                            tabStateProvider.monthsValue,
                        label: AppLocalizations.of(context)!
                            .surv_add_info_follow_date_label),
                  ],
                ),
                ExpandedRow(
                  isVisible: followUpMonthsVisible,
                  children: [
                    DatePickerWidget(
                      readOnly: state.featureMode.viewMode,
                      setValue: (value) {
                        state.setFollowUpDateComplete(ref, value);
                        tabStateNotifier.setFollowUpDate(value);
                      },
                      initialValue: state.followUpDateComplete ??
                          tabStateProvider.followUpDate,
                      label: AppLocalizations.of(context)!
                          .surv_add_info_follow_datepicker_label,
                    )
                  ],
                ),
                ExpandedRow(
                  isVisible: followUpMonthsVisible,
                  children: [
                    SelectionRowWidget(
                        label: AppLocalizations.of(context)!
                            .follow_up_previous_label,
                        readOnly: state.featureMode.viewMode,
                        setValue: (value) {
                          state.setIsFollowUpFromPrevious(ref, value);
                          tabStateNotifier.checkFollowUpPrevious(value);
                        },
                        initialValue: state.isFollowUpFromPrevious ??
                            tabStateProvider.followUpCommentsVisible),
                  ],
                ),
                ExpandedRow(
                  isVisible: followUpMonthsVisible,
                  children: [
                    textFieldBuilder.build(
                        label: AppLocalizations.of(context)!
                            .follow_up_comments_label,
                        initialValue: state.followUpComments ??
                            tabStateProvider.followUpComments,
                        onChanged: (value) {
                          state.setFollowUpComments(ref, value);
                          tabStateNotifier.setFollowUpComments(value);
                        },
                        maxLength: 1024,
                        maxLinesOverride: 3),
                  ],
                ),
                ExpandedRow(
                  children: [
                    textFieldBuilder.build(
                      label: AppLocalizations.of(context)!
                          .additional_comments_label,
                      maxLength: 512,
                      maxLinesOverride: 3,
                      initialValue: state.additionalComments ??
                          tabStateProvider.additionalComments,
                      onChanged: (value) {
                        state.setAdditionalComments(ref, value);
                        tabStateNotifier.setAdditionalComments(value);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
