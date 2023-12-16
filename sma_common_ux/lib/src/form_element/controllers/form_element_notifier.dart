import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'package:sma_common_ux/src/form_element/repositories/form_element_repository.dart';
import 'package:sma_local_data/sma_local_data.dart';

const String _dataFile = "assets/database/form_elements.json";

class FormElementNotifier extends StateNotifier<FormElementList> {
  FormElementNotifier() : super(FormElementList.empty()) {
    rootBundle.loadString(_dataFile).then((value) {
      FormElementRepository.withJsonString(value)
          .then((value) => state = value);
    });
  }

  Future<void> refresh() async {
    state = await FormElementRepository.withJsonString(
        await rootBundle.loadString(_dataFile));
  }
}

final formElementProvider =
    StateNotifierProvider<FormElementNotifier, FormElementList>((ref) {
  return FormElementNotifier();
});
