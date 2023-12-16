import 'package:anet/common/widgets/review_interval.dart';
import 'package:anet/features/surv/state/surv_custom_exempt_review_state.dart';
import 'package:anet/features/surv/tabs/providers/surv_custom_exempt_review_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class SurvCustomExemptReviewTab extends ConsumerWidget {
  final SurvCustomExemptReviewState state;
  const SurvCustomExemptReviewTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    final tabProvider = ref.watch(customExemptReviewStateTabProvider);
    final tabNotifier = ref.watch(customExemptReviewStateTabProvider.notifier);
    final bool isVisible =
        state.wasCustomExemptReviewConducted ?? tabProvider.isVisible;

    return Form(
      child: FocusTraversalGroup(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ExpandedRow(
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_review_conducted_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.wasCustomExemptReviewConducted,
                    setValue: (value) {
                      state.setWasCustomExemptReviewConducted(ref, value);
                      tabNotifier.setIsVisibile(value);
                    }
                ),
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_custom_slaughter_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.doesFacilityPerformCustomSlaughter,
                  setValue: (value) =>
                      state.setDoesFacilityPerformCustomSlaughter(ref, value),
                ),
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_custom_processing_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.doesFacilityPerformCustomProcessing,
                  setValue: (value) =>
                      state.setDoesFacilityPerformCustomProcessing(ref, value),
                ),
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                textFieldBuilder.build(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_establish_email_label,
                  initialValue:
                      state.doesFacilityEmail, //TODO change package to text
                  onChanged: (value) => state.setDoesFacilityEmail(ref, value),
                ),
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_offical_establishment_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.officialEstablishment,
                  //Y == next 2 questions visible
                  setValue: (value) {
                    tabNotifier.isOfficials(value);
                    state.setOfficialEstablishment(ref, value);
                  },
                ),
              ],
            ),
            ExpandedRow(
              
              isVisible: isVisible && (state.officialEstablishment ?? false),
              children: [
                textFieldBuilder.build(
                    label: "Name of PHV (last, first)",
                    initialValue: state.namePHV,
                    onChanged: (value) {
                      state.setNamePHV(ref, value);
                    }
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible && (state.officialEstablishment ?? false),
              children: [
                textFieldBuilder.build(
                    label: "Name of IIC (last, first)",
                    initialValue: state.nameIIC,
                    onChanged: (value) {
                      state.setNameIIC(ref, value);
                    }
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_copy_owner_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.copyGiven,
                  setValue: (value) {
                    state.setCopyGiven(ref, value);
                    tabNotifier.isCopyGiven(value);
                  },
                ),
              ],
            ),
            ExpandedRow(
                isVisible: isVisible &&
                    (state.copyGiven ?? tabProvider.copyGivenSelected),
                children: [
              DatePickerWidget(
                setValue: (value) => state.setDateCopyGiven(ref, value),
                readOnly: state.featureMode.viewMode,
                label:
                    AppLocalizations.of(context)!.surv_exempt_date_given_label,
                initialValue: state.dateCopyGiven ?? DateTime.now(),
              )
            ]),
            ExpandedRow(
              isVisible: isVisible,
              padding: const EdgeInsets.all(4),
              children: [
                FormElementMultiSelectWidget(
                  readOnly: state.featureMode.viewMode,
                  moduleSurveillanceSpecies,
                  initialValue: state.species ?? MultiString(),
                  title:
                      AppLocalizations.of(context)!.surv_exempt_species_label,
                  setValue: (value) {
                    state.setSpecies(ref, value);
                    tabNotifier.isSpeciesOther(value);
                  },
                  maxSelect: 13,
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible && tabProvider.speciesOther,
              padding: const EdgeInsets.all(4),
              children: [
                textFieldBuilder.build(
                  label: "Other Species",
                  initialValue: state.otherSpecies ?? "",
                  onChanged: (value) {
                    state.setOtherSpecies(ref, value);
                  },
                ),
              ],
            ),
            Visibility(
              visible: isVisible,
              child: ReviewIntervalWidget(
                label: AppLocalizations.of(context)!
                    .surv_exempt_recommended_interval_label,
                keyString: state.reviewInterval ?? "",
                readOnly:
                    state.featureMode.viewMode && !state.featureMode.editMode,
                setValue: (value) {
                  state.setReviewInterval(ref, value);
                  tabNotifier.isReviewOther(value);
                },
              ),
            ),
            ExpandedRow(
              //Visible when "Other" is selected in Review Interval widget
              isVisible: isVisible && tabProvider.recommenedOther,
              padding: const EdgeInsets.all(4),
              children: [
                textFieldBuilder.build(
                  label: "Other Recommended Interval",
                  initialValue: state.otherInterval,
                  onChanged: (value) => state.setOtherInterval(ref, value),
                ),
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                Text(
                  AppLocalizations.of(context)!.surv_exempt_custom_label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_humane_handling_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.humaneLivestockSlaughter,
                  setValue: (value) =>
                      state.setHumaneLivestockSlaughter(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.humaneLivestockSlaughterText,
                  onChanged: (value) {
                    state.setHumaneLivestockSlaughterText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_recordkeeping_acceptable_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.recordkeepingAcceptable,
                  setValue: (value) =>
                      state.setRecordkeepingAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.recordkeepingAcceptableText,
                  onChanged: (value) {
                    state.setRecordkeepingAcceptableText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_sanitary_operations_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.sanitaryOperationsAcceptable,
                  setValue: (value) =>
                      state.setSanitaryOperationsAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.sanitaryOperationsAcceptableText,
                  onChanged: (value) {
                    state.setSanitaryOperationsAcceptableText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_pest_control_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.pestControlAcceptable,
                  setValue: (value) =>
                      state.setPestControlAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.pestControlAcceptableText,
                  onChanged: (value) {
                    state.setPestControlAcceptableText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_inedible_material_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.ineditbleMaterialAcceptable,
                  setValue: (value) =>
                      state.setIneditbleMaterialAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.ineditbleMaterialAcceptableText,
                  onChanged: (value) {
                    state.setIneditbleMaterialAcceptableText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_labeling_acceptable_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.labelingAcceptable,
                  setValue: (value) => state.setLabelingAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.labelingAcceptableText,
                  onChanged: (value) {
                    state.setLabelingAcceptableText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_pathogen_acceptable_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.pathogenAcceptable,
                  setValue: (value) => state.setPathogenAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.pathogenAcceptableText,
                  onChanged: (value) {
                    state.setPathogenAcceptableText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_water_acceptable_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.waterAcceptable,
                  setValue: (value) => state.setWaterAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.waterAcceptableText,
                  onChanged: (value) {
                    state.setWaterAcceptableText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_waste_acceptable_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.wasteAcceptable,
                  setValue: (value) => state.setWasteAcceptable(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.wasteAcceptableText,
                  onChanged: (value) {
                    state.setWasteAcceptableText(ref, value);
                  },
                )
              ],
            ),
            Visibility(visible: isVisible, child: const Divider()),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                Text(
                  AppLocalizations.of(context)!
                      .surv_exempt_adulterated_misbranded_label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_adulterated_observed_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.misbrandedObservedLabel,
                  setValue: (value) =>
                      state.setMisbrandedObservedLabel(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.misbrandedObservedLabelText,
                  onChanged: (value) {
                    state.setMisbrandedObservedLabelText(ref, value);
                  },
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_adulterated_occur_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.misbrandedLikelyLabel,
                  setValue: (value) =>
                      state.setMisbrandedLikelyLabel(ref, value),
                ),
                textFieldBuilder.build(
                  label: "",
                  initialValue: state.misbrandedLikelyLabelText,
                  onChanged: (value) {
                    state.setMisbrandedLikelyLabelText(ref, value);
                  },
                )
              ],
            ),
            Visibility(visible: isVisible, child: const Divider()),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    AppLocalizations.of(context)!
                        .surv_exempt_legal_privileges_label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_admin_consent_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.adminsitrativeConsentAgreement,
                  setValue: (value) =>
                      state.setAdminsitrativeConsentAgreement(ref, value),
                ),
              ],
            ),
            ExpandedRow(
              isVisible: isVisible,
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .surv_exempt_recommend_removal_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.recommendForRemovalOfPrivileges,
                  setValue: (value) =>
                      state.setRecommendForRemovalOfPrivileges(ref, value),
                ),
              ],
            ),
            ExpandedRow(
              children: [
                textFieldBuilder.build(
                  label:
                      AppLocalizations.of(context)!.additional_comments_label,
                  maxLength: 1024,
                  maxLinesOverride: 3,
                  initialValue: state.additionalComments,
                  onChanged: (value) => state.setAdditionalComments(ref, value),
                ),
              ],
            ),
          ],
        ),
      ),
    )
    );
  }
}
