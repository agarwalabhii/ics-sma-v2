typedef StateCountyMappingList = List<StateCountyMapping>;

class StateCountyMapping {
  String? state;
  String? county;

  StateCountyMapping({this.state, this.county});

  StateCountyMapping.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    county = json['county'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, String?>{};
    data['state'] = state;
    data['county'] = county;
    return data;
  }
}
