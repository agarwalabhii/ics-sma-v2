import 'package:json_annotation/json_annotation.dart' as j;

part 'multi_string.g.dart';

@j.JsonSerializable()
class MultiString {
  List<String> _values = [];

  List<String> get listValues => _values;
  String delimiter = "|";
  String get oneString => listValues.join(delimiter);
  int get length => _values.length;

  MultiString();

  MultiString.fromString(String? text) {
    if (text != null) {
      _values = text.split(delimiter);
    }
  }

  MultiString.fromValues(List<String> values) {
    _values = values;
  }

  void addValue(String newValue) {
    _values.add(newValue);
  }

  void addValues(List<String> newValues) {
    _values.addAll(newValues);
  }

  void removeValue(String value) {
    _values.remove(value);
  }

  factory MultiString.fromJson(Map<String, dynamic> json) =>
      _$MultiStringFromJson(json);

  Map<String, dynamic> toJson() => _$MultiStringToJson(this);
}
