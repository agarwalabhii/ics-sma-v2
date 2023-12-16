class SurvFirmModel {
  final int survId;
  final int? firmId;
  final String? name;
  final String? doingBusinessAs;
  final String? primaryBusinessType;
  final String? secondaryBusinessType;
  final String? tertiaryBusinessType;

  SurvFirmModel({
    required this.survId,
    this.firmId,
    this.name,
    this.doingBusinessAs,
    this.primaryBusinessType,
    this.secondaryBusinessType,
    this.tertiaryBusinessType,
  });
}
