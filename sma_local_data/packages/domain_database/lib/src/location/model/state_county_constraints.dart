
import 'package:local_common/database.dart';

enum StateCountyConstraints implements FieldConstraint {
  stateCode(maxLength: 2, mandatory: mandatoryUnknown),
  countyName(maxLength: 50, mandatory: mandatoryUnknown),
  countyCode(maxLength: 10, mandatory: mandatoryUnknown);

  @override
  final int minLength = 0;

  @override
  final int maxLength;

  @override
  final bool mandatory;

  const StateCountyConstraints(
      {required this.maxLength, required this.mandatory});
}
