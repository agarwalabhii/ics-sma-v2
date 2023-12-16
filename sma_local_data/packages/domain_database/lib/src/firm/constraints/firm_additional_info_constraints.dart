
import 'package:local_common/database.dart';

enum FirmAdditionalInfoConstraints implements FieldConstraint {
  pestControlName(maxLength: 50, mandatory: mandatoryUnknown),
  otherRegulatoryInfo(maxLength: 255, mandatory: mandatoryUnknown),
  additionalComments(maxLength: 512, mandatory: mandatoryUnknown),
  address1(maxLength: 50, mandatory: mandatoryUnknown),
  address2(maxLength: 50, mandatory: mandatoryUnknown),
  city(maxLength: 50, mandatory: mandatoryUnknown),
  state(maxLength: 10, mandatory: mandatoryUnknown),
  zip(maxLength: 6, mandatory: mandatoryUnknown),
  phone(maxLength: 15, mandatory: mandatoryUnknown),
  ext(maxLength: 6, mandatory: mandatoryUnknown),
  mobile(maxLength: 15, mandatory: mandatoryUnknown),
  email(maxLength: 50, mandatory: mandatoryUnknown),
  comments(maxLength: 255, mandatory: mandatoryUnknown);

  @override
  final int minLength = 0;

  @override
  final int maxLength;

  @override
  final bool mandatory;

  const FirmAdditionalInfoConstraints(
      {required this.maxLength, required this.mandatory});
}
