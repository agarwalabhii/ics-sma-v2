import 'package:anet/features/dashboard2/dashboard_providers_2/dashboard_notifier_2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardProvider2 =
    StateNotifierProvider<DashboardNotifier2, DashboardState2>((_) {
  return DashboardNotifier2(const DashboardState2(
    true,
    [],
  ));
});
