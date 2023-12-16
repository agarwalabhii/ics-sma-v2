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
  });

  final void Function(String) setValue;
  final String keyString;
  final String label;
  final bool isVisible;

  @override
  State<ReviewIntervalWidget> createState() => _ReviewIntervalWidgetState();
}

class _ReviewIntervalWidgetState extends State<ReviewIntervalWidget> {
  String selectedItem = "Yearly";
  @override
  Widget build(BuildContext context) {
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
                    onChanged: (v) {
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
