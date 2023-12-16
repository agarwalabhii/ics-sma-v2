import 'package:anet/common/widgets/feature/feature_widget.dart';
import 'package:anet/features/search/pages/search_view_page.dart';
import 'package:anet/features/settings/pages/settings_view.dart';
import 'package:flutter/material.dart';

import 'package:anet/features/home/home_page.dart';
import 'package:sma_local_data/sma_local_data.dart';

class Routes {
  Routes._();

  //static variables
  static const String homePage = '/home';
  static const String firmPage = "/firm";
  static const String searchPage = "/search";
  static const String settingsPage = "/settings";
  static const String survPage = "/surveillance";

  static UnanimatedPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return UnanimatedPageRoute(
          builder: (context) => const HomePage(),
        );
      case firmPage:
        return UnanimatedPageRoute(
          builder: (context) => FeatureWidget(
              feature: Feature.firm, args: settings.arguments as PageArguments),
        );
      case searchPage:
        return UnanimatedPageRoute(
          builder: (context) => const SurvPlutoSearchView(),
        );
      case settingsPage:
        return UnanimatedPageRoute(
          builder: (context) => const SettingsView(),
        );
      case survPage:
        return UnanimatedPageRoute(
          builder: (context) => FeatureWidget(
              feature: Feature.surv, args: settings.arguments as PageArguments),
        );
      default:
        return UnanimatedPageRoute(
          builder: (context) => const HomePage(),
        );
    }
  }
}

class UnanimatedPageRoute<T> extends MaterialPageRoute<T> {
  UnanimatedPageRoute({
    required Widget Function(BuildContext) builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
