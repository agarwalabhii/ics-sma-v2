
import 'package:local_common/database.dart';

enum ContactConstraints implements FieldConstraint {
  name(maxLength: 50, mandatory: mandatoryUnknown),
  title(maxLength: 10, mandatory: mandatoryUnknown),
  phoneNumber(maxLength: 10, mandatory: mandatoryUnknown),
  phoneNumberExtension(maxLength: 5, mandatory: mandatoryUnknown),
  mobilePhoneNumber(maxLength: 10, mandatory: mandatoryUnknown),
  faxNumber(maxLength: 10, mandatory: mandatoryUnknown),
  email(maxLength: 50, mandatory: mandatoryUnknown);

  @override
  final int minLength = 0;

  @override
  final int maxLength;

  @override
  final bool mandatory;

  const ContactConstraints(
      {required this.maxLength, required this.mandatory});
}
