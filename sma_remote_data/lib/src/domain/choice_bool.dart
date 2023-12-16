
enum ChoiceColumnType {
  ynnull,
  ynnanull,
}

class ChoiceBool {
  
  final bool? value;

  ChoiceBool(this.value);

  String? get asYNNull {
    if (value == null) {
      return null;
    } else if (value!) {
      return "Y";
    }
    return "N";
  }  

  String? get asTFNull {
    if (value == null) {
      return null;
    } else if (value!) {
      return "T";
    }
    return "F";
  }  
}