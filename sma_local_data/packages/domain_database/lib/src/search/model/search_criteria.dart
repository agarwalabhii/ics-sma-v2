enum SearchType {
  firmId,
  survId,
  firmName,
  primaryBusinessType,
  address,
  city,
  state,
  zip,
  assignCode;
}

class SearchCriteria {
  final SearchType type;
  final String value;

  SearchCriteria({required this.type, required this.value});
}
