import 'package:anet/features/surv/state/surv_imported_product_state.dart';
import 'package:anet/features/surv/tabs/providers/surv_imported_product_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class SurvImportedProductTab extends ConsumerWidget {
  final SurvImportedProductState state;

  const SurvImportedProductTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final tabStateProvider = ref.watch(survImportedProductTabProvider);
    final tabStateNotifier = ref.watch(survImportedProductTabProvider.notifier);

    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    return SingleChildScrollView(
      child: Column(
      children: [
        ExpandedRow(children: [
          SelectionRowWidget(
            label: AppLocalizations.of(context)!
                .surv_import_products_observed_label,
            readOnly: state.featureMode.viewMode,
            setValue: (value) {
              tabStateNotifier
                  .checkVisibility(value);
              state.setWasImportProductObserved(ref, value);
            },
            initialValue: state.wasImportProductObserved,
          ),
        ]),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label:
                    AppLocalizations.of(context)!.surv_import_bear_marks_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setHasCheckForFederalImportInspection(ref, value);
                },
                initialValue: state.hasCheckForFederalImportInspection),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label: AppLocalizations.of(context)!
                    .surv_import_documents_available_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setWasCorrectDocumentsRequested(ref, value);
                },
                initialValue: state.wasCorrectDocumentsRequested),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label:
                    AppLocalizations.of(context)!.surv_import_bear_marks_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setAsPhisUsedVerifyProducts(ref, value);
                },
                initialValue: state.hasPhisUsedVerifyProducts),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label:
                    AppLocalizations.of(context)!.surv_import_phis_verify_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setWasOriginatedFromEligibleForeignEstablishments(
                      ref, value);
                },
                initialValue:
                    state.wasOriginatedFromEligibleForeignEstablishments),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label: AppLocalizations.of(context)!
                    .surv_import_eligible_countries_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setWasProducedWhileForeignEstablishmentsEligible(
                      ref, value);
                },
                initialValue:
                    state.wasProducedWhileForeignEstablishmentsEligible),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label: AppLocalizations.of(context)!
                    .surv_import_eligible_establishments_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                    state.setWasOriginatedFromEligibleForeignEstablishments(
                        ref, value);
                },
                  initialValue:
                      state.wasOriginatedFromEligibleForeignEstablishments),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label: AppLocalizations.of(context)!
                    .surv_import_while_eligibile_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setWasProducedWhileForeignEstablishmentsEligible(
                      ref, value);
                },
                initialValue:
                    state.wasProducedWhileForeignEstablishmentsEligible),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
            SelectionRowWidget(
                label:
                    AppLocalizations.of(context)!.surv_import_passed_fsis_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setWasInspectedAndPassedByFSIS(ref, value);
                },
                initialValue: state.wasInspectedAndPassedByFSIS), //
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: const [
            Divider(),
          ],
        ),
        ExpandedRow(
            isVisible: state.wasImportProductObserved ??
                tabStateProvider.isVisibleQuestions,
          children: [
              MultiSelectorWidget(
                mainList: Strings.countryList,
                label: "Country of Origin",
                max: 1,
                readOnly: state.featureMode.viewMode,
                initialValue: state.country,
                setValue: (value, list) {
                  state.setCountry(ref, value);
                },
              ),
              const SizedBox(
                child: Text(" "),
              ),
          ],
        ),
        const ExpandedRow(
          children: [
            Divider(),
          ],
        ),
        ExpandedRow(
          children: [
            textFieldBuilder.build(
                label: AppLocalizations.of(context)!.additional_comments_label,
                readOnlyOverride: state.featureMode.viewMode,
                maxLength: 512,
                onChanged: (value) {
                  state.setImportedProductsAdditionalComments(ref, value);
                },
                initialValue: state.importedProductsAdditionalComments,
                maxLinesOverride: 3),
          ],
        )
      ],
      ),
    );
  }
}
