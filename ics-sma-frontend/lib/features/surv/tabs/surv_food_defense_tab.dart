import 'package:anet/features/surv/state/surv_food_defense_state.dart';
import 'package:anet/features/surv/tabs/providers/surv_food_defense_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';

class SurvFoodDefenseTab extends ConsumerWidget {
  final SurvFoodDefenseState state;

  const SurvFoodDefenseTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final tabProvider = ref.watch(survFoodDefenseTabProvider);
    final tabNotifier = ref.watch(survFoodDefenseTabProvider.notifier);
    final bool openQuestions =
        state.wasFoodDefenseConducted ?? tabProvider.isVisibleQuestions;

    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10, right: 5),
      child: Form(
        child: FocusTraversalGroup(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SelectionRowWidget(
                  label:
                      AppLocalizations.of(context)!.food_defense_observed_label,
                  initialValue: state.wasFoodDefenseConducted,
                  setValue: (value) {
                    state.setWasFoodDefenseConducted(ref, value);
                    tabNotifier.checkVisibility(value);
                  },
                  readOnly: state.featureMode.viewMode,
                ),
                Visibility(
                  visible: openQuestions,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                    child: Divider(),
                  ),
                ),
                Visibility(
                  visible: openQuestions,
                  child: Column(
                    children: [
                      const Text(
                        "Types of Products Observed",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ExpandedRow(children: [
                        CustomCheckboxListTile(
                          title: "Meat",
                          initialValue: state.meatCheck ?? false,
                          readOnly: state.featureMode.viewMode,
                          setValue: (newValue) {
                            tabNotifier.checkMeat(newValue ?? false);
                            state.setMeatCheck(ref, newValue);
                          },
                        ),
                        CustomCheckboxListTile(
                          title: "Poultry",
                          initialValue: state.poultryCheck ?? false,
                          readOnly: state.featureMode.viewMode,
                          setValue: (newValue) {
                            tabNotifier.checkPoultry(newValue ?? false);
                            state.setPoultryCheck(ref, newValue);
                          },
                        ),
                        CustomCheckboxListTile(
                          title: "Egg Products",
                          initialValue: state.eggCheck ?? false,
                          readOnly: state.featureMode.viewMode,
                          setValue: (newValue) {
                            tabNotifier.checkEgg(newValue ?? false);
                            state.setEggCheck(ref, newValue);
                          },
                        ),
                        CustomCheckboxListTile(
                          title: "Shell Eggs",
                          initialValue: state.shellEggCheck ?? false,
                          readOnly: state.featureMode.viewMode,
                          setValue: (newValue) {
                            tabNotifier.checkShellEgg(newValue ?? false);
                            state.setShellEggCheck(ref, newValue);
                          },
                        ),
                        CustomCheckboxListTile(
                          title: "Siluriformes Fish",
                          initialValue: state.siluriformesFishCheck ?? false,
                          readOnly: state.featureMode.viewMode,
                          setValue: (newValue) {
                            tabNotifier.checkSiluriformes(newValue ?? false);
                            state.setSiluriformesFishCheck(ref, newValue);
                          },
                        ),
                        CustomCheckboxListTile(
                          title: "Non-Amenable",
                          initialValue: state.nonAmenableCheck ?? false,
                          readOnly: state.featureMode.viewMode,
                          setValue: (newValue) {
                            tabNotifier.checkNonAmenable(newValue ?? false);
                            state.setNonAmenableCheck(ref, newValue);
                          },
                        ),
                      ]),
                    ],
                  ),
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!.written_plan_label,
                  setValue: (value) {
                    state.setHasWrittenFoodDefensePlan(ref, value);
                  },
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.hasWrittenFoodDefensePlan,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!.emergency_conact_label,
                  setValue: (value) =>
                      state.setHasEmergencyContactInfo(ref, value),
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.hasEmergencyContactInfo,
                  isVisible: openQuestions,
                ),
                Visibility(
                  visible: openQuestions,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                    child: Divider(),
                  ),
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .outer_perimeter_protect_label,
                  setValue: (value) =>
                      state.setHasOutsideSurveillanceSystem(ref, value),
                  initialValue: state.hasOutsideSurveillanceSystem,
                  readOnly: state.featureMode.viewMode,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .food_defense_measures_inside_facility_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) =>
                      state.setHasInsideSurveillanceSystem(ref, value),
                  initialValue: state.hasInsideSurveillanceSystem,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .authorized_persons_on_premises_procedures_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) =>
                      state.setHasProceduresForAuthorizedPersons(ref, value),
                  initialValue: state.hasProceduresForAuthorizedPersons,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .use_and_storage_hazardous_materials_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) => state
                      .setHasStoreProceduresForHazardousMaterials(ref, value),
                  initialValue: state.hasStoreProceduresForHazardousMaterials,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .protect_food_ingerdients_adulteration_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) => state
                      .setHasProdedureForFoodAndFoodIngredients(ref, value),
                  initialValue: state.hasProdedureForFoodAndFoodIngredients,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!.record_visitors_label,
                  setValue: (value) =>
                      state.setHasLogToIdentifyEmployeesAndVisitors(ref, value),
                  initialValue: state.hasLogToIdentifyEmployeesAndVisitors,
                  readOnly: state.featureMode.viewMode,
                  isVisible: openQuestions,
                ),
                Visibility(
                  visible: openQuestions,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                    child: Divider(),
                  ),
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!.areas_restricted_label,
                  setValue: (value) =>
                      state.setHasShippingRecordAccessRestricted(ref, value),
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.hasShippingRecordAccessRestricted,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .products_consistent_documents_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) => state
                      .setHasProcedureForIncomingShippingDocuments(ref, value),
                  initialValue: state.hasProcedureForIncomingShippingDocuments,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .procedure_observe_incoming_products_tampering_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) => state.setIsFreeFromTampering(ref, value),
                  initialValue: state.isFreeFromTampering,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .procedure_maintaining_security_products_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) =>
                      state.setWasMaintenenceSecurityDuringShip(ref, value),
                  initialValue: state.wasMaintenenceSecurityDuringShip,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .procedure_verify_driver_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) =>
                      state.setWasDriverIdentificationVerified(ref, value),
                  initialValue: state.wasDriverIdentificationVerified,
                  isVisible: openQuestions,
                ),
                Visibility(
                  visible: openQuestions,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                    child: Divider(),
                  ),
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!.detention_occur_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) => state.setDidDetentionOccur(ref, value),
                  initialValue: state.didDetentionOccur,
                  isVisible: openQuestions,
                ),
                Visibility(
                  visible: openQuestions,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                    child: Divider(),
                  ),
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .security_vulnerabilities_discussed_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) =>
                      state.setWasSecurityVulnerabilitiesDiscussed(ref, value),
                  initialValue: state.wasSecurityVulnerabilitiesDiscussed,
                  isVisible: openQuestions,
                ),
                SelectionRowWidget(
                  label:
                      AppLocalizations.of(context)!.fsis_5420_3_provided_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) => state.setWasForm5420Provided(ref, value),
                  initialValue: state.wasForm5420Provided,
                  isVisible: openQuestions,
                ),
                Visibility(
                  visible: openQuestions,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                    child: Divider(),
                  ),
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .products_free_from_tampering_label,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) =>
                      state.setProductsFreeFromTampering(ref, value),
                  initialValue: state.productsFreeFromTampering,
                  isVisible: openQuestions,
                ),
                textFieldBuilder.build(
                    label: AppLocalizations.of(context)!.exit_notes_label,
                    readOnlyOverride: state.featureMode.viewMode,
                    initialValue: state.foodDefenseExitNotes,
                    onChanged: (value) =>
                        state.setFoodDefenseExitNotes(ref, value),
                    maxLength: 1024,
                    maxLinesOverride: 3),
                textFieldBuilder.build(
                    label: AppLocalizations.of(context)!.investigator_label,
                    initialValue: "",
                    readOnlyOverride: true,
                    onChanged: (value) => {}),
              ],
            ),
        ),
        ),
      ),
    );
  }
}
