
import 'package:local_common/database.dart';

enum PhysicalLocationConstraints implements FieldConstraint {
  address1(maxLength: 75, mandatory: mandatoryUnknown),
  address2(maxLength: 75, mandatory: mandatoryUnknown),
  city(maxLength: 50, mandatory: mandatoryUnknown),
  stateCode(maxLength: 2, mandatory: mandatoryUnknown),
  zipCode(maxLength: 5, mandatory: mandatoryUnknown),
  county(maxLength: 30, mandatory: mandatoryUnknown),
  latitude(maxLength: 15, mandatory: mandatoryUnknown),
  longitude(maxLength: 15, mandatory: mandatoryUnknown);

  @override
  final int minLength = 0;

  @override
  final int maxLength;

  @override
  final bool mandatory;

  const PhysicalLocationConstraints(
      {required this.maxLength, required this.mandatory});
}
