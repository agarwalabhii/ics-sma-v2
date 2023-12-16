enum ChoiceValue {
  yes,
  no,
  na,
  $null,
  invalid;

  static ChoiceValue fromRemoteModel(String? value) {
    if (value == null) {
      return ChoiceValue.$null;
    }
    switch (value) {
      case "Y":
      case "T":
        return ChoiceValue.yes;
      case "N":
      case "F":
        return ChoiceValue.no;
      case "N/A": // TODO: 
        return ChoiceValue.no;
      default:  // TODO: verify invalid values
        return ChoiceValue.$null;
    }
  }

  bool? get value {
    switch (this) {
      case yes:
        return true;
      case no:
        return false;
      default:
        return null;
    }
  }
}

class Choice<T extends ChoiceConfig> {
  final ChoiceValue value;
  late T config;

  Choice({required this.value}) {
    this.config = ChoiceConfig.create(T) as T;
  }
}

abstract class ChoiceConfig {
  List<ChoiceValue> get choices;
  bool get nullable;
  ChoiceConfig();

  static ChoiceConfig create(Type type) {
    return _constructors[type]!();
  }

  static final _constructors = {
    YesNoNANullConfig: () => YesNoNANullConfig(),
    NoNullConfig: () => NoNullConfig(),
    YesNoNullConfig: () => YesNoNullConfig(),
  };
}

// Yes, No, NA, or Null Choice Config
class YesNoNANullConfig extends ChoiceConfig {
  @override
  List<ChoiceValue> get choices =>
      [ChoiceValue.yes, ChoiceValue.no, ChoiceValue.na, ChoiceValue.$null];

  @override
  bool get nullable => true;
}

// No or Null Choice Config
class NoNullConfig extends ChoiceConfig {
  @override
  List<ChoiceValue> get choices => [ChoiceValue.no, ChoiceValue.$null];

  @override
  bool get nullable => false;
}

// Yes,No, or Null Choice Config
class YesNoNullConfig extends ChoiceConfig {
  @override
  List<ChoiceValue> get choices =>
      [ChoiceValue.yes, ChoiceValue.no, ChoiceValue.$null];

  @override
  bool get nullable => false;
}
