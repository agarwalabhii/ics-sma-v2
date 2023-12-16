import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sma_common_ux/ux.dart';

class TextFormFieldBuilder {
  final bool readOnly;
  late bool expands;

  TextFormFieldBuilder({this.readOnly = false, this.expands = false});

  Widget build(
      {required String label,
      bool isVisible = true,
      int? maxLength,
      String? initialValue,
      ValueChanged<String>? onChanged,
      List<TextInputFormatter>? inputFormatters,
      bool? readOnlyOverride,
      bool? expandsOverride,
      int? maxLinesOverride,
      TextInputType? keyboardType,
      bool? mandate}) {
    if (maxLength == null) {
      debugPrint("Label does not set a mxLength; default to 80");
    }
    if (maxLinesOverride != null) {
      expandsOverride = false;
    }

    if (kDebugMode) {
      print("build: label: $label, value: $initialValue, readOnly: $readOnly");
    }

    final bool ro = (readOnlyOverride != null) ? readOnlyOverride : readOnly;
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: TextFormField(
          style: TextStyle(color: Colors.black, fontSize: 16.0),
          keyboardType: keyboardType ?? TextInputType.text,
          enableInteractiveSelection: !ro,
          enabled: !ro,
          decoration: labelInputDecorator(label, ro),
          initialValue: initialValue,
          onChanged: onChanged ?? (value) {},
          inputFormatters: inputFormatters,
          maxLength: maxLength ?? 80,
          readOnly: ro,
          // validator: (value) {
          //   if (mandate && (value == null || value.isEmpty)) {}
          //   return null;
          // }
          expands: (expandsOverride != null) ? expandsOverride : expands,
          maxLines: (maxLinesOverride != null) ? maxLinesOverride : null,
        ),
      ),
    );
  }
}

Widget readOnlyTextField(String label, String? initialValue) {
  final textFieldBuilder = TextFormFieldBuilder(readOnly: true);
  return textFieldBuilder.build(
      label: label, initialValue: initialValue ?? "", onChanged: null);
}
