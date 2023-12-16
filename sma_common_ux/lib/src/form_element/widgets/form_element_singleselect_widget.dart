import 'package:flutter/material.dart';
import 'package:sma_common_ux/src/form/textformfield_builder.dart';

class FormElementSingleSelectWidget extends StatelessWidget {
  final List<String> items;
  final String label;
  final String initialValue;
  final bool readOnly;
  final Function(String?)? setValue;

  FormElementSingleSelectWidget(this.items, this.label,
      {required this.setValue,
      this.readOnly = false,
      this.initialValue = "",
      super.key});

  final textFieldBuilder = TextFormFieldBuilder(readOnly: true);

  @override
  Widget build(BuildContext context) {
    return readOnly
        ? textFieldBuilder.build(
            label: label,
            initialValue: initialValue,
            readOnlyOverride: true,
          )
        : DropdownButtonFormField(
            value: initialValue,
            focusColor: Colors.transparent,
          decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
              fillColor: Colors.white,
              label: Text(
                label,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 0,
            items: items.map<DropdownMenuItem<String>>(
              (item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              },
            ).toList(),
          onChanged: setValue,
          );
  }
}
