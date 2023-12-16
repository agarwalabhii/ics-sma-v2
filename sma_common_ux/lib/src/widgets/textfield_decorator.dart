import 'package:flutter/material.dart';
import 'package:sma_common_ux/ux.dart';

class TextfieldDecorator {
  final String name;
  final bool readOnly;
  const TextfieldDecorator({required this.name, required this.readOnly});

  InputDecoration build() {
    return InputDecoration(
        label: Text(name),
        labelStyle: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        filled: readOnly,
        fillColor: Colors.grey[200]!,
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: themeColor)));
  }
}
