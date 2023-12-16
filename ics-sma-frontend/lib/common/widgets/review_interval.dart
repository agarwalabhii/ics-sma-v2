import 'package:flutter/material.dart';

List<String> months = [
  "Yearly",
  "Semi-Annually",
  "Other",
];

class ReviewIntervalWidget extends StatefulWidget {
  const ReviewIntervalWidget({
    super.key,
    required this.setValue,
    required this.keyString,
    this.label = "",
    this.isVisible = true,
    this.readOnly = false,
  });

  final void Function(String) setValue;
  final String keyString;
  final String label;
  final bool isVisible;
  final bool readOnly;

  @override
  State<ReviewIntervalWidget> createState() => _ReviewIntervalWidgetState();
}

class _ReviewIntervalWidgetState extends State<ReviewIntervalWidget> {
  @override
  Widget build(BuildContext context) {
    String selectedItem =
        (widget.keyString.isNotEmpty) ? widget.keyString : "Yearly";
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
                  borderRadius: BorderRadius.circular(8),
                  color: widget.readOnly ? Colors.grey : Colors.transparent,
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
                      DropdownMenuItem(value: "Yearly", child: Text("Yearly")),
                      DropdownMenuItem(
                          value: "Semi-Annually", child: Text("Semi-Annually")),
                      DropdownMenuItem(value: "Other", child: Text("Other")),
                    ],
                    onChanged: widget.readOnly
                        ? (v) {}
                        : (String? v) {
                      setState(() => selectedItem = v!);
                      widget.setValue(v!);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
