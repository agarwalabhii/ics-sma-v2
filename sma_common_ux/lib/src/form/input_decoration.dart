import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sma_common_ux/src/widgets/number_formatter.dart';
import 'package:sma_common_ux/ux.dart';

InputDecoration labelInputDecorator(String label, bool readOnly) =>
    InputDecoration(
        counterText: "",
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        filled: readOnly,
        fillColor: Colors.grey[200],
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: themeColor)));

List<TextInputFormatter>? get inputFormatterPhoneNumber => <TextInputFormatter>[
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      LengthLimitingTextInputFormatter(10),
      NumberFormatter()
    ];

List<TextInputFormatter>? get inputFormatterEmail =>
    <TextInputFormatter>[]; // TODO: Add email address format
