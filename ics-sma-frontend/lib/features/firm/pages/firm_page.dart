import 'package:anet/common/extensions/feature_mode_extension.dart';
import 'package:anet/common/nav_rail/nav_rail.dart';
import 'package:anet/common/widgets/anet_appbar.dart';
import 'package:anet/common/widgets/feature/feature_tab_widget.dart';
import 'package:anet/common/widgets/tabs_pages.dart';
import 'package:anet/common/widgets/tabs_pageview.dart';
import 'package:anet/features/firm/pages/firm_record_widget.dart';
import 'package:anet/features/firm/pages/firm_snapshot_widget.dart';
import 'package:anet/features/firm/state/firm_state.dart';
import 'package:anet/features/firm/widgets/firm_bottom_buttons_widget.dart';
import 'package:anet/features/top_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_local_data/sma_local_data.dart';

class FirmPage extends ConsumerWidget {
  final FirmState state;

  const FirmPage({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final List<TabsPage> pages = [
      TabsPage(
        title: AppLocalizations.of(context)!.firm_page_general_info_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.firmGeneralInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.firm_page_owner_info_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.firmOwnerInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title:
            AppLocalizations.of(context)!.firm_page_managaging_officials_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.firmManagingOfficalsInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.firm_page_organizing_struct_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.firmOrganizingStruct,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.firm_page_additional_info_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.firmAdditionalInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
      TabsPage(
        title: AppLocalizations.of(context)!.firm_page_product_info_label,
        widget: FeatureTabWidget(
          modelContext: ModelContext(
            id: state.id,
            feature: Feature.firmProductInfo,
            featureMode: state.featureMode,
          ),
        ),
        reset: () {},
      ),
    ];

    return Scaffold(
        appBar:
            AnetAppbar(state.featureMode.prefixLabel(context, Feature.firm)),
        backgroundColor: Colors.grey[200],
        body: Row(
          children: [
            const NavRail(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopBarWidget(state.featureMode),
                  FirmSnapshotWidget(id: state.id),
                  const FirmRecordWidget(),
                  Expanded(
                    child: TabsPageView(
                      pages: pages,
                    ),
                  ),
                  const FirmBottomButtonsWidget(),
                ],
              ),
            ),
          ],
        ));
  }
}
