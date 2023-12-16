import 'package:flutter/material.dart';

class ExpandedRow extends StatelessWidget {
  ///Expanded row places each of it's children in an expanded
  ///widget then places them in a row.
  const ExpandedRow(
      {super.key,
      this.children = const [],
      this.padding = const EdgeInsets.all(8),
      this.isVisible = true});

  ///The widgets to be laid out
  final List<Widget> children;

  ///Adds padding to the row
  final EdgeInsets padding;

  ///Determines if the row is visible
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    List<Widget> output = [];
    for (Widget item in children) {
      output.add(Expanded(
        child: item,
      ));
    }
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: padding,
        child: Row(
          children: output,
        ),
      ),
    );
  }
}
