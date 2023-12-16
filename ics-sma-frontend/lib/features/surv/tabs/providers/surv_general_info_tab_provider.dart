import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

final survGeneralInfoTabProvider =
    NotifierProvider<GeneralInfoTabNotifier, GeneralInfoTabState>(
        GeneralInfoTabNotifier.new);

class GeneralInfoTabNotifier extends Notifier<GeneralInfoTabState> {

  void checkSpecialProject(MultiString? value) {
    if (value == null) {
      state = state.copyWith(specialProjectVisible: false);
      return;
    }
    if (value.listValues.contains("SP")) {
      state = state.copyWith(specialProjectVisible: true);
      return;
    }
    state = state.copyWith(specialProjectVisible: false);
  }

  @override
  GeneralInfoTabState build() {
    return GeneralInfoTabState(false);
  }
}

class GeneralInfoTabState {
  final bool specialProjectVisible;

  GeneralInfoTabState(this.specialProjectVisible);

  GeneralInfoTabState copyWith({specialProjectVisible}) {
    return GeneralInfoTabState(
        specialProjectVisible ?? this.specialProjectVisible);
  }
}
