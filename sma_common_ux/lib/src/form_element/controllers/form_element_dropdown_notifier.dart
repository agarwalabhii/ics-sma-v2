import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/form_element/widgets/module_domain_tuples.dart';
import 'package:sma_local_data/sma_local_data.dart';

import 'form_element_notifier.dart';

class FormElementDropdownNotifier extends StateNotifier<FormElementList> {
  FormElementDropdownNotifier() : super(onEmptyFormElementList());

  Future<void> refresh(Ref ref, ModuleDomainTuple tuple) async {
    var completeList = ref.read(formElementProvider);
    state = await completeList.filter(tuple);
  }
}

final formElementDropdownValueProvider =
    StateProvider.autoDispose.family<String, ModuleDomainTuple>((ref, tuple) {
  return "";
});

extension on FormElementList {
  Future<FormElementList> filter(ModuleDomainTuple tuple) async {
    return where((e) => e.module == tuple.item1 && e.domain == tuple.item2)
        .toList();
  }
}

final formElementDropdownProvider = FutureProvider.autoDispose
    .family<FormElementList, ModuleDomainTuple>((ref, tuple) async {
  final completeList = ref.watch(formElementProvider);
  var l = await completeList.filter(tuple);
  return l;
});

FormElementList onEmptyFormElementList() {
  return <FormElement>[
    FormElement(
        active: false,
        code: "Initial",
        label: "Initial",
        module: moduleFirmInfoBusinessActivities.item1,
        domain: moduleFirmInfoBusinessActivities.item2,
        sequence: 1),
  ];
}
