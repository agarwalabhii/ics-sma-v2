import 'package:anet/features/dashboard/dashboard_page.dart';
import 'package:anet/features/dashboard2/dashboard_page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_remote_data/sma_remote_data.dart';

final welcomeProvider = StateProvider((ref) => true);

class HomePage extends ConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcome = ref.watch(welcomeProvider);
    final notifier = ref.watch(welcomeProvider.notifier);
        ref.listen(requestAuthenticationProvider, (bool? previous, bool next) {
      print("prev: $previous");
      print("next: $next");
      if (next) {
        print("showIdentityDialog");
        showIdentityDialog(context);
      }
    });
    if (welcome) {
      Future.delayed(const Duration(seconds: 1), () {
        showWelcomeDialog(context);
        notifier.state = false;
      });
    }
    final widget = FeatureFlags.isEnabled(FeatureFlags.dashboard2)
        ? const DashboardPage2()
        : const DashboardPage();
    return Stack(
      children: <Widget>[widget],
    );
  }
}
