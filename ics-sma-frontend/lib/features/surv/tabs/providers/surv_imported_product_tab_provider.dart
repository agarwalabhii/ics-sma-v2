import 'package:flutter_riverpod/flutter_riverpod.dart';

final survImportedProductTabProvider =
    StateNotifierProvider<ImportedProductTabNotifier, ImportedProductTabState>(
  (ref) => ImportedProductTabNotifier(ImportedProductTabState(false)),
);

class ImportedProductTabNotifier
    extends StateNotifier<ImportedProductTabState> {
  ImportedProductTabNotifier(ImportedProductTabState state) : super(state);

  void checkVisibility(bool? value) {
    if (value == null) {
      state = state.copyWith(isVisibleQuestions: false);
      return;
    }
    if (value) {
      state = state.copyWith(isVisibleQuestions: true);
      return;
    }
    state = state.copyWith(isVisibleQuestions: false);
  }
}

class ImportedProductTabState {
  final bool isVisibleQuestions;

  ImportedProductTabState(this.isVisibleQuestions);

  ImportedProductTabState copyWith({isVisibleQuestions}) {
    return ImportedProductTabState(
        isVisibleQuestions ?? this.isVisibleQuestions);
  }
}
