typedef FormElementList = List<FormElement>;

class FormElement {
  String? module;
  String? domain;
  String? label;
  String? code;
  bool? active;
  int? sequence;

  FormElement(
      {this.module,
      this.domain,
      this.label,
      this.code,
      this.active,
      this.sequence});

  FormElement.fromJson(Map<String, dynamic> json) {
    module = json['module'];
    domain = json['domain'];
    label = json['label'];
    code = json['code'];
    active = json['active'];
    sequence = json['sequence'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['module'] = module;
    data['domain'] = domain;
    data['label'] = label;
    data['code'] = code;
    data['active'] = active;
    data['sequence'] = sequence;
    return data;
  }
}
