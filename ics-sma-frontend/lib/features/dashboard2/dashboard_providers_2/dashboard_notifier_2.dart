import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardNotifier2 extends StateNotifier<DashboardState2> {
  DashboardNotifier2(super.state);

  void toggleRecentSurv() {
    state = state.copyWith(recentSurvToggle: !state.recentSurvToggle);
  }
}

class DashboardState2 {
  final bool recentSurvToggle;
  final List? survList;

  const DashboardState2(this.recentSurvToggle, this.survList);
  // List<ReminderItem> remindersList;

  DashboardState2 copyWith({recentSurvToggle, survList}) {
    return DashboardState2(
        recentSurvToggle ?? this.recentSurvToggle, survList ?? this.survList);
  }
}
