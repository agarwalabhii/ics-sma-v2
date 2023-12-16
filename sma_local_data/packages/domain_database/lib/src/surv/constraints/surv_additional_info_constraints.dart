
import 'package:local_common/database.dart';

enum SurvAdditionaInfoConstraints implements FieldConstraint {
  firmRepresentative1(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  firmRepresentativeTitle1(
      maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  firmRepresentative2(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  firmRepresentativeTitle2(
      maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  referralComments(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  followUpComments(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown),
  location(maxLength: maxLengthUnknown, mandatory: mandatoryUnknown);

  @override
  final int minLength = 0;

  @override
  final int maxLength;

  @override
  final bool mandatory;

  const SurvAdditionaInfoConstraints(
      {required this.maxLength, required this.mandatory});
}
