import 'dart:convert';

import 'dart:async';

import 'package:sma_local_data/sma_local_data.dart';

class FormElementRepository {
  FormElementRepository();

  static Future<FormElementList> withJsonString(String jsonString) async {
    return await FormElementRepository._loadElements(jsonString);
  }

  static Future<FormElementList> _loadElements(String jsonString) async {
    var jsonList = jsonDecode(jsonString);
    return jsonList.map<FormElement>((i) => FormElement.fromJson(i)).toList();
  }

  Future<void> refresh() async {}
}
