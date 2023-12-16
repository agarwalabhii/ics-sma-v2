import 'package:flutter/material.dart';

List<String> months = [
  "1 Month",
  "2 Months",
  "3 Months",
  "4 Months",
  "5 Months",
  "6 Months",
  "7 Months",
  "8 Months",
  "9 Months",
  "10 Months",
  "11 Months",
  "12 Months",
];

class MonthsSelector extends StatefulWidget {
  ///Callback to set the months.
  final void Function(String, String) updateMonths;

  /// The main string currently viewed by the user
  final String keyString;

  /// The main title of the widget.
  final String label;

  ///Determines if the widget is viewable by the user.
  final bool isVisible;

  ///Determines if the user can interact with this widget
  final bool readOnly;

  ///A widget to set the number of months out the user should recheck a surveillance
  const MonthsSelector({
    super.key,
    required this.updateMonths,
    required this.keyString,
    this.readOnly = false,
    this.label = "",
    this.isVisible = true,
  });

  @override
  State<MonthsSelector> createState() => _MonthsSelectorState();
}

class _MonthsSelectorState extends State<MonthsSelector> {
  @override
  Widget build(BuildContext context) {
    String selectedItem =
        (widget.keyString.isNotEmpty) ? widget.keyString : "1 Month";
    return Visibility(
      visible: widget.isVisible,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Expanded(
                child: Wrap(children: [
              Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            ])),
            Container(
              decoration: BoxDecoration(
                  color: widget.readOnly ? Colors.grey : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                  )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: DropdownButton(
                    selectedItemBuilder: (context) {
                      List<Widget> widgets = [];
                      for (String item in months) {
                        widgets.add(Text(item));
                      }
                      return widgets;
                    },
                    value: selectedItem,
                    underline: Container(),
                    items: const [
                      DropdownMenuItem(
                          value: "1 Month", child: Text("1 Month")),
                      DropdownMenuItem(
                          value: "2 Months", child: Text("2 Months")),
                      DropdownMenuItem(
                          value: "3 Months", child: Text("3 Months")),
                      DropdownMenuItem(
                          value: "4 Months", child: Text("4 Months")),
                      DropdownMenuItem(
                          value: "5 Months", child: Text("5 Months")),
                      DropdownMenuItem(
                          value: "6 Months", child: Text("6 Months")),
                      DropdownMenuItem(
                          value: "7 Months", child: Text("7 Months")),
                      DropdownMenuItem(
                          value: "8 Months", child: Text("8 Months")),
                      DropdownMenuItem(
                          value: "9 Months", child: Text("9 Months")),
                      DropdownMenuItem(
                          value: "10 Months", child: Text("10 Months")),
                      DropdownMenuItem(
                          value: "11 Months", child: Text("11 Months")),
                      DropdownMenuItem(
                          value: "12 Months", child: Text("12 Months")),
                    ],
                    onChanged: widget.readOnly
                        ? (v) {}
                        : (String? v) {
                            setState(() => selectedItem = v!);
                            widget.updateMonths(widget.keyString, v!);
                          }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
