const maxLengthUnknown = 80;
const mandatoryUnknown = false;

abstract class FieldConstraint {
  int get minLength;

  int get maxLength;

  bool get mandatory;
}
