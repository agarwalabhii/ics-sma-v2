


import 'package:local_common/database.dart';

enum FirmGeneralInfoConstraints implements FieldConstraint {
  name(maxLength: 75, mandatory: mandatoryUnknown),
  doingBusinessAs(maxLength: 75, mandatory: mandatoryUnknown),
  alsoKnownAs(maxLength: 75, mandatory: mandatoryUnknown),
  previousName(maxLength: 75, mandatory: mandatoryUnknown),
  establishmentNumber(maxLength: 40, mandatory: mandatoryUnknown),
  risk(maxLength: 10, mandatory: mandatoryUnknown),
  regionCode(maxLength: 3, mandatory: mandatoryUnknown),
  subRegionCode(maxLength: 3, mandatory: mandatoryUnknown),
  assignCode(maxLength: 10, mandatory: mandatoryUnknown),
  numberOfFloors(maxLength: 75, mandatory: mandatoryUnknown),
  primaryBusinessType(maxLength: 25, mandatory: mandatoryUnknown),
  secondaryBusinessType(maxLength: 25, mandatory: mandatoryUnknown),
  tertiaryBusinessType(maxLength: 25, mandatory: mandatoryUnknown);

  @override
  final int minLength = 0;

  @override
  final int maxLength;

  @override
  final bool mandatory;

  const FirmGeneralInfoConstraints(
      {required this.maxLength, required this.mandatory});
}
