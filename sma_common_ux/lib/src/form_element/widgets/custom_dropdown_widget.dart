import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class CustomDropdownWidget extends ConsumerWidget {
  final String? label;
  final String? initialValue;
  final bool readOnly;
  final List<String> items;
  final Function(String?)? setValue;

  const CustomDropdownWidget(
      {super.key,
      this.label,
      this.initialValue,
      this.readOnly = false,
      this.items = const [],
      this.setValue});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return readOnly
        ? readOnlyTextField(
            label ?? "",
            initialValue,
          )
        : DropdownButtonFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          fillColor: Colors.white,
          label: Text(label ?? "",
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ))),
      icon: const Icon(Icons.keyboard_arrow_down),
            focusColor: Colors.transparent,
      iconSize: 0,
            value: initialValue,
      items: items.map((String item) {
        return DropdownMenuItem(
          value: item,
          enabled: !readOnly,
          child: Text(item),
        );
      }).toList(),
      onChanged: (e) {
              print(e);
              setValue!(e);
      },
    );
  }
}

Widget readOnlyTextField(String label, String? initialValue) {
  final textFieldBuilder = TextFormFieldBuilder(readOnly: true);
  return textFieldBuilder.build(
      label: label, initialValue: initialValue ?? "", onChanged: null);
}
