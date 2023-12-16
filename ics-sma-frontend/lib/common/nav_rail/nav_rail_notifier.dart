import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavRailNotifier extends StateNotifier<NavRailModel> {
  NavRailNotifier(NavRailModel state) : super(state);

  void changeIndex(int i) {
    state = state.copyWith(selectedIndex: i);
  }

  void cycleCollapse() {
    if (state.isCollapsed) {
      state = state.copyWith(isCollapsed: false, isExpanded: false);
    } else if (state.isExpanded) {
      state = state.copyWith(isCollapsed: true, isExpanded: false);
    } else if (!state.isExpanded) {
      state = state.copyWith(isExpanded: true);
    }
  }

  void isExpanded() {
    state = state.copyWith(isExpanded: !state.isExpanded);
  }
}

class NavRailModel {
  final int selectedIndex;
  final bool isExpanded;
  final bool isCollapsed;

  const NavRailModel(this.selectedIndex, this.isExpanded, this.isCollapsed);

  NavRailModel copyWith({selectedIndex, isExpanded, isCollapsed}) {
    return NavRailModel(selectedIndex ?? this.selectedIndex,
        isExpanded ?? this.isExpanded, isCollapsed ?? this.isCollapsed);
  }
}
