import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardNotifier extends StateNotifier<DashboardState> {
  DashboardNotifier(super.state);

  void toggleRecentSurv() {
    state = state.copyWith(recentSurvToggle: !state.recentSurvToggle);
  }
}

class DashboardState {
  final bool recentSurvToggle;
  final List? survList;

  const DashboardState(this.recentSurvToggle, this.survList);
  // List<ReminderItem> remindersList;

  DashboardState copyWith({recentSurvToggle, survList}) {
    return DashboardState(
        recentSurvToggle ?? this.recentSurvToggle, survList ?? this.survList);
  }
}
