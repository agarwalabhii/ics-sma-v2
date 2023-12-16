import 'package:flutter/material.dart';

class PDFSelectorButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool enabled;
  final VoidCallback onTapView;

  const PDFSelectorButton({
    super.key,
    required this.icon,
    required this.text,
    required this.enabled,
    required this.onTapView,
  });

  @override
  Widget build(BuildContext context) {
    //PopupmenuButton
    return DropdownButton(
      value: text,
      underline: Container(),
      items: [
        DropdownMenuItem(
          value: text,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Icon(
                icon,
                color: enabled ? const Color(0xFFAA0E06) : Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(text),
              )
            ]),
          ),
        ),
        DropdownMenuItem(
          value: "View",
          onTap: onTapView,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Text("View"),
              )
            ]),
          ),
        ),
      ],
      onChanged: (itemName) {
        //TODO: add functionality to onChanged
      },
    );
  }
}
