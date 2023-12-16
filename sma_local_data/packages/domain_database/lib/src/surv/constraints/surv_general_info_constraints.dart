
import 'package:local_common/database.dart';

enum SurvGeneralInfoConstraints implements FieldConstraint {
  estimatedId(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  reason(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  retailProject(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  retailProjectOther(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  retailSpecialProject(
      maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  specialProject(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  firmNameAtTimeOfAction(
      maxLength: maxLengthUnknown, mandatory: mandatoryUnknown);

  @override
  final int minLength = 0;

  @override
  final int maxLength;

  @override
  final bool mandatory;

  const SurvGeneralInfoConstraints(
      {required this.maxLength, required this.mandatory});
}
