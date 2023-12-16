import 'package:flutter/material.dart';

List<String> hours = [
  "00:00",
  "01:00",
  "02:00",
  "03:00",
  "04:00",
  "05:00",
  "06:00",
  "07:00",
  "08:00",
  "09:00",
  "10:00",
  "11:00",
  "12:00",
  "13:00",
  "14:00",
  "15:00",
  "16:00",
  "17:00",
  "18:00",
  "19:00",
  "20:00",
  "21:00",
  "22:00",
  "23:00",
];

class HourSelector extends StatefulWidget {
  const HourSelector({
    super.key,
    required this.updateHours,
    required this.initialValue,
    this.readOnly = false,
    this.closed = false,
  });

  final void Function(String) updateHours;
  final String initialValue;
  final bool readOnly;
  final bool closed;

  @override
  State<HourSelector> createState() => _HourSelectorState();
}

class _HourSelectorState extends State<HourSelector> {
  String selectedItem = "";

  @override
  void initState() {
    selectedItem = widget.initialValue;
    super.initState();
  }

  @override
  void didUpdateWidget(HourSelector oldWidget) {
    super.didUpdateWidget(oldWidget);
    selectedItem = widget.initialValue;
  }


  @override
  Widget build(BuildContext context) {
    if (widget.readOnly && !widget.closed) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(selectedItem),
      );
    }
    return DropdownButton(
        selectedItemBuilder: (context) {
          List<Widget> widgets = [];
          for (String item in hours) {
            widgets.add(Text(item));
          }
          return widgets;
        },
        value: selectedItem,
        focusColor: Colors.transparent,
        underline: const Divider(),
        items: widget.readOnly ? null : getItems(),
        onChanged: (v) {
          setState(() => selectedItem = v!);
          widget.updateHours(v!);
        });
  }

  List<DropdownMenuItem> getItems() {
    return [
          DropdownMenuItem(
        value: "00:00",
        enabled: !widget.readOnly,
        child: const Text("00:00"),
      ),
      DropdownMenuItem(
            value: "01:00",
            enabled: !widget.readOnly,
            child: const Text("01:00"),
          ),
          DropdownMenuItem(
            value: "02:00",
            enabled: !widget.readOnly,
            child: const Text("02:00"),
          ),
          DropdownMenuItem(
            value: "03:00",
            enabled: !widget.readOnly,
            child: const Text("03:00"),
          ),
          DropdownMenuItem(
            value: "04:00",
            enabled: !widget.readOnly,
            child: const Text("04:00"),
          ),
          DropdownMenuItem(
            value: "05:00",
            enabled: !widget.readOnly,
            child: const Text("05:00"),
          ),
          DropdownMenuItem(
            value: "06:00",
            enabled: !widget.readOnly,
            child: const Text("06:00"),
          ),
          DropdownMenuItem(
            value: "07:00",
            enabled: !widget.readOnly,
            child: const Text("07:00"),
          ),
          DropdownMenuItem(
            value: "08:00",
            enabled: !widget.readOnly,
            child: const Text("08:00"),
          ),
          DropdownMenuItem(
            value: "09:00",
            enabled: !widget.readOnly,
            child: const Text("09:00"),
          ),
          DropdownMenuItem(
            value: "10:00",
            enabled: !widget.readOnly,
            child: const Text("10:00"),
          ),
          DropdownMenuItem(
            value: "11:00",
            enabled: !widget.readOnly,
            child: const Text("11:00"),
          ),
          DropdownMenuItem(
            value: "12:00",
            enabled: !widget.readOnly,
            child: const Text("12:00"),
          ),
          DropdownMenuItem(
            value: "13:00",
            enabled: !widget.readOnly,
            child: const Text("13:00"),
          ),
          DropdownMenuItem(
            value: "14:00",
            enabled: !widget.readOnly,
            child: const Text("14:00"),
          ),
          DropdownMenuItem(
            value: "15:00",
            enabled: !widget.readOnly,
            child: const Text("15:00"),
          ),
          DropdownMenuItem(
            value: "16:00",
            enabled: !widget.readOnly,
            child: const Text("16:00"),
          ),
          DropdownMenuItem(
            value: "17:00",
            enabled: !widget.readOnly,
            child: const Text("17:00"),
          ),
          DropdownMenuItem(
            value: "18:00",
            enabled: !widget.readOnly,
            child: const Text("18:00"),
          ),
          DropdownMenuItem(
            value: "19:00",
            enabled: !widget.readOnly,
            child: const Text("19:00"),
          ),
          DropdownMenuItem(
            value: "20:00",
            enabled: !widget.readOnly,
            child: const Text("20:00"),
          ),
          DropdownMenuItem(
            value: "21:00",
            enabled: !widget.readOnly,
            child: const Text("21:00"),
          ),
          DropdownMenuItem(
            value: "22:00",
            enabled: !widget.readOnly,
            child: const Text("22:00"),
          ),
          DropdownMenuItem(
            value: "23:00",
            enabled: !widget.readOnly,
            child: const Text("23:00"),
      ),
    ];
  }
}
