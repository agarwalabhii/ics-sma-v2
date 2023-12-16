import 'package:anet/features/dashboard/dashboard_providers/dashboard_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardProvider =
    StateNotifierProvider<DashboardNotifier, DashboardState>((_) {
  return DashboardNotifier(const DashboardState(
    true,
    [],
  ));
});
