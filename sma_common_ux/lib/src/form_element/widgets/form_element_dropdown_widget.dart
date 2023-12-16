import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/form/textformfield_builder.dart';
import 'package:sma_common_ux/src/form_element/controllers/form_element_dropdown_notifier.dart';
import 'package:sma_local_data/sma_local_data.dart';

import 'module_domain_tuples.dart';

class FormElementDropDownWidget extends ConsumerWidget {
  final ModuleDomainTuple tuple;
  final bool readOnly;
  final String label;
  final SingleString? initialValue;
  final Function(SingleString?) setValue;

  const FormElementDropDownWidget(
      {required this.tuple,
      required this.readOnly,
      required this.label,
      required this.initialValue,
      required this.setValue,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (readOnly) {
      return readOnlyTextField(label, initialValue);
    }

    final listAsync = ref.watch(formElementDropdownProvider(tuple));
    return listAsync.when(
      data: (list) => DropdownButtonFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            fillColor: Colors.white,
            focusColor: Colors.transparent,
            label: Text(label,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ))),
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 0,
        value: initialValue,
        focusColor: Colors.transparent,
        // Array list of items
        items: list.map<DropdownMenuItem<String>>((items) {
          return DropdownMenuItem(
            value: items.label,
            child: Text(items.label ?? ""),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: setValue,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, __) => _emptyDropdownButton("Error"),
    );
  }

  DropdownButton _emptyDropdownButton(String value) {
    return DropdownButton<String>(
      value: value,
      icon: const Icon(Icons.arrow_downward),
      onChanged: (value) {},
      items: const [
        DropdownMenuItem<String>(
          value: "",
          child: Text(""),
        ),
      ],
    );
  }
}
