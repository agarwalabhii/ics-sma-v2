import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

final searchTypeStateProvider = StateProvider<SearchFirmChoice>(
  (ref) => SearchFirmChoice.firmId,
);

final searchStringStateProvider = StateProvider<String>(
  (ref) => "",
);

final searchResultsListStateProvider = StateProvider<List<SearchResultModel>>(
  (ref) => [],
);

final searchResultStateNotifierProvider =
    StateNotifierProvider<SearchResultNotifier, SearchResultState>(
        (ref) => SearchResultNotifier(SearchResultState([])));

class SearchResultNotifier extends StateNotifier<SearchResultState> {
  SearchResultNotifier(state) : super(state);

  void updateList(List<SearchResultModel> list) {
    state = state.copyWith(resultList: list);
  }
}

class SearchResultState {
  final List<SearchResultModel> resultList;

  SearchResultState(this.resultList);

  SearchResultState copyWith({resultList}) {
    return SearchResultState(resultList ?? this.resultList);
  }
}


enum SearchFirmChoice {
  firmId("Firm Id"),
  firmName("Firm Name"),
  survId("Surv Id");
  // city("City"),
  // state("State"),
  // code("Assign. Code"),
  // priBusType("Primary Business Type"),
  // tier("Tier"),
  // address("Address");

  final String label;

  const SearchFirmChoice(this.label);
}

