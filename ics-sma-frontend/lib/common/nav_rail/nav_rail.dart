import 'package:anet/common/nav_rail/destinations.dart';
import 'package:anet/features/firm/tabs/providers/firm_geninfo_misc_provider.dart';
import 'package:anet/features/firm/tabs/providers/firm_name_provider.dart';
import 'package:anet/features/firm/tabs/providers/firm_organization_struct_tab_provider.dart';
import 'package:anet/features/firm/tabs/providers/firm_owner_info_tab_provider.dart';
import 'package:anet/features/firm/tabs/providers/firm_product_provider.dart';
import 'package:anet/features/firm/tabs/providers/firm_same_owner_provider.dart';
import 'package:anet/features/firm/tabs/providers/hours_operation_provider.dart';
import 'package:anet/features/surv/tabs/providers/shell_egg_providers.dart';
import 'package:anet/features/surv/tabs/providers/surv_additional_info_tab_provider.dart';
import 'package:anet/features/surv/tabs/providers/surv_custom_exempt_review_tab_provider.dart';
import 'package:anet/features/surv/tabs/providers/surv_firm_search_provider.dart';
import 'package:anet/features/surv/tabs/providers/surv_food_defense_tab_provider.dart';
import 'package:anet/features/surv/tabs/providers/surv_general_info_tab_provider.dart';
import 'package:anet/features/surv/tabs/providers/surv_imported_product_tab_provider.dart';
import 'package:anet/features/surv/tabs/providers/surv_sampling_info_tab_providers.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'nav_rail_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Color mainBlueColor = const Color(0xFF1b3864);

final _currentFeatureProvider = StateProvider<Feature>((ref) => Feature.none);

class NavRail extends ConsumerWidget {
  const NavRail({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(navRailProvider);
    FeatureDestinations.buildList();
    return NavigationRail(
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedIndex: provider.selectedIndex,
        minExtendedWidth: 200,
        groupAlignment: -1,
        backgroundColor: mainBlueColor,
        extended: provider.isExpanded,
        destinations: FeatureDestinations.destinationList,
        onDestinationSelected: (index) {
          _continueNavigation(context, ref).then((value) {
            if (value == null) {
              return;
            }
            if (value) {
              ref.watch(formActionProvider.notifier).state =
                  SaveFormAction.saveExisting();
            }
            invalidateFirm(ref);
            invalidateSurv(ref);
            final featureDestinations =
                FeatureDestinations.featureDestinationsList[index];
            ref.watch(_currentFeatureProvider.notifier).state =
                featureDestinations.feature;
            if (featureDestinations.showFunc != null) {
              featureDestinations.showFunc!(context);
            } else {
              final pageArguments = featureDestinations.pageArguments;
              assert(featureDestinations.route != null);
              Navigator.of(context).pushReplacementNamed(
                  featureDestinations.route!,
                  arguments: pageArguments);
            }
            final notifier = ref.watch(navRailProvider.notifier);
            notifier.changeIndex(index);
          });
        });
  }

  void invalidateFirm(WidgetRef ref) {
    ref.invalidate(hoursOfOperationStateProvider);
    ref.invalidate(miscSectionStateProvider);
    ref.invalidate(organizationStructureTabStateProvider);
    ref.invalidate(productInfoTabStateProvider);
    ref.invalidate(firmNameProvider);
    ref.invalidate(sameAsOwnerProvider);
    ref.invalidate(ownerInfoTabStateTabProvider);
  }

  void invalidateSurv(WidgetRef ref) {
    ref.invalidate(additionalInfoStateTabProvider);
    ref.invalidate(coolerListProvider);
    ref.invalidate(coolerProvider);
    ref.invalidate(transportProvider);
    ref.invalidate(transportListProvider);
    ref.invalidate(customExemptReviewStateTabProvider);
    ref.invalidate(survFirmSearchProvider);
    ref.invalidate(survFoodDefenseTabProvider);
    ref.invalidate(survGeneralInfoTabProvider);
    ref.invalidate(survImportedProductTabProvider);
    ref.invalidate(survSamplingInfoTabProvider);
  }

  Future<bool?> _continueNavigation(BuildContext context, WidgetRef ref) async {
    final currentFeature = ref.watch(_currentFeatureProvider);
    if (currentFeature == Feature.firm || currentFeature == Feature.surv) {
      return showDialog<bool?>(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text("Unsaved Changes"),
            content: SizedBox(
              width: 400,
              height: 110,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child:
                        Text("Do you want to save?", textAlign: TextAlign.left),
                  ),
                  const Spacer(),
                  const Divider(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Wrap(
                      spacing: 16,
                      children: [
                        OutlinedButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: const Text('Yes')),
                        OutlinedButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: const Text('No')),
                        OutlinedButton(
                            onPressed: () => Navigator.pop(context, null),
                            child: const Text('Cancel')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
    return true;
  }
}
