import 'package:sma_common_ux/ux.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends ConsumerWidget {
  final String label;
  final DateTime? initialValue;
  final void Function(DateTime) setValue;
  final bool isVisible;
  final bool readOnly;

  final _controller = TextEditingController();

  DatePickerWidget(
      {super.key,
      required this.setValue,
      required this.label,
      required this.initialValue,
      this.isVisible = true,
      this.readOnly = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (initialValue == null) {
      _controller.text = "";
    } else {
      _controller.text = DateFormat('MM/dd/yyyy').format(initialValue!);
    }
    return Visibility(
      visible: isVisible,
      child: readOnly
          ? _readOnlyTextField(label, initialValue)
          : TextFormField(
              enabled: !readOnly,
              controller: _controller,
              decoration: InputDecoration(
                label: Text(label,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                    )),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: themeColor,
                  ),
                ),
                suffixIcon: const Icon(Icons.calendar_month_rounded),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: themeColor,
                  ),
                ),
              ),
              readOnly: readOnly,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: initialValue ?? DateTime.now(),
                    firstDate: DateTime(2001),
                    lastDate: DateTime(2101),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: const ColorScheme.light(
                            primary: themeColor,
                            onPrimary: Colors.white,
                            onSurface: themeColor,
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: themeColor,
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    });
                if (pickedDate != null) {
                  final formattedDate =
                      DateFormat('MM/dd/yyyy').format(pickedDate);
                  _controller.text = formattedDate;
                  setValue(pickedDate);
                }
              },
            ),
    );
  }

  Widget _readOnlyTextField(String label, DateTime? initialValue) {
    final textFieldBuilder = TextFormFieldBuilder(readOnly: true);
    return textFieldBuilder.build(
        label: label,
        initialValue: initialValue != null
            ? DateFormat('MM/dd/yyyy').format(initialValue)
            : "",
        onChanged: null);
  }
}
