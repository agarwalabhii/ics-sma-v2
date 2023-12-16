


import 'package:domain_database/domain_database.dart';

class SearchResult extends SearchResultModel {
  @override
  final int? lastSurvId;

  @override
  final int? firmId;

  @override
  final String? firmName;

  @override
  final String? primaryBusinessType;

  @override
  final String? address;

  @override
  final String? city;

  @override
  final String? state;

  @override
  final String? zipCode;

  @override
  final String? assignCode;

  SearchResult(
      {required this.lastSurvId,
      required this.firmId,
      required this.firmName,
      required this.primaryBusinessType,
      required this.address,
      required this.city,
      required this.state,
      required this.zipCode,
      required this.assignCode});
}
