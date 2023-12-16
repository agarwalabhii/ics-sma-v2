import 'package:anet/common/extensions/feature_mode_extension.dart';
import 'package:anet/common/nav_rail/nav_rail.dart';
import 'package:anet/common/widgets/anet_appbar.dart';
import 'package:anet/common/widgets/feature/feature_tab_widget.dart';
import 'package:anet/common/widgets/tabs_pages.dart';
import 'package:anet/common/widgets/tabs_pageview.dart';
import 'package:anet/features/bottom_buttons_widget.dart';
import 'package:anet/features/surv/pages/surv_record_widget.dart';
import 'package:anet/features/surv/pages/surv_snapshot_widget.dart';
import 'package:anet/features/surv/state/surv_state.dart';
import 'package:anet/features/top_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_local_data/sma_local_data.dart';

class SurvPage extends ConsumerWidget {
  final SurvState state;

  const SurvPage({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final List<TabsPage> pages = [
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_general_info_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.survGeneralInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_food_defense_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.survFoodDefense,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
          title: AppLocalizations.of(context)!.surv_page_food_safety_label,
          widget: FeatureTabWidget(
            modelContext: ModelContext(
              id: state.id,
              feature: Feature.survFoodSafety,
              featureMode: state.featureMode,
            ),
          ),
          reset: () {}),
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_additional_info_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.survAdditionalInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_imported_products_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.survImportedProduct,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_sampling_info_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.survSamplingInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_order_verification_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.survOrderVerification,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_custom_exempt_label,
        widget: FeatureTabWidget(
            modelContext: ModelContext(
          id: state.id,
          feature: Feature.survCustomExemptReview,
          featureMode: state.featureMode,
        )),
        reset: () {},
      ),
      TabsPage(
        title: "Non Food Safety Consumer Protection",
        widget: FeatureTabWidget(
            modelContext: ModelContext(
          id: state.id,
          feature: Feature.survNonFoodSafety,
          featureMode: state.featureMode,
        )),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.surv_page_shell_eggs_label,
        widget: FeatureTabWidget(
            modelContext: ModelContext(
          id: state.id,
          feature: Feature.survShellEggs,
          featureMode: state.featureMode,
        )),
        reset: () {},
      ),
    ];

    return Scaffold(
      appBar: AnetAppbar(state.featureMode.prefixLabel(context, Feature.surv)),
      backgroundColor: Colors.grey[200],
      body: Row(
        children: [
          const NavRail(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBarWidget(state.featureMode),
                SurvSnapshotWidget(id: state.id),
                SurvRecordWidget(survId: state.id),
                Expanded(
                  child: TabsPageView(
                    pages: pages,
                  ),
                ),
                const BottomButtonsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
