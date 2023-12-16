
import 'package:anet/common/routes/routes.dart';
import 'package:anet/common/widgets/feature/feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

enum FeatureDestinations {
  dashboard(feature: Feature.dashboard, route: Routes.homePage),
  newFirm(feature: Feature.firm, route: Routes.firmPage),
  newSurv(feature: Feature.surv, route: Routes.survPage),
  search(feature: Feature.search, route: Routes.searchPage),
  person(feature: Feature.person, showFunc: showLoginDialog),
  remoteSync(feature: Feature.remoteSync, showFunc: showRemoteSyncBoard),
  diagnostics(feature: Feature.diagnostic, showFunc: showDebugDialog);

  final Feature feature;
  final String? route;
  final void Function(BuildContext context)? showFunc;

  const FeatureDestinations({required this.feature, this.route, this.showFunc});

  PageArguments? get pageArguments {
    if (route == Routes.homePage) {
      return null;
    }
    return PageArguments(
        feature: feature, featureMode: FeatureMode.create);
  }  

  static List<NavigationRailDestination> destinationList = [];
  static List<FeatureDestinations> featureDestinationsList = [];

  static void buildList() {
    destinationList = [
      _build("Dashboard", Icons.space_dashboard_outlined),
      _build("New Firm", Icons.domain_add),
      _build("New Surveillance", Icons.assignment_add),
      _build("Search", Icons.search),
      _build("User", Icons.person),
    ];
    featureDestinationsList = [
      dashboard,
      newFirm,
      newSurv,
      search,
      person,
    ];
    if (FeatureFlags.isEnabled(FeatureFlags.removeSync)) {
      destinationList.add(_build("Remote Sync", Icons.sync));
      featureDestinationsList.add(remoteSync);
    }
    if (AppConfiguration.enableDiagnostics) {
      destinationList.add(_build("Diagnostics", Icons.bug_report));
      featureDestinationsList.add(diagnostics);
    }
  }
}

NavigationRailDestination _build(String message, IconData toolTipIcon) {
  return NavigationRailDestination(
    icon: Tooltip(
      message: message,
      child: Icon(
        toolTipIcon,
        size: 16,
        color: Colors.white,
      ),
    ),
    selectedIcon: Tooltip(
      message: message,
      child: Icon(
        toolTipIcon,
        color: Colors.white,
        size: 16,
      ),
    ),
    label: Text(
      message,
      textAlign: TextAlign.end,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
