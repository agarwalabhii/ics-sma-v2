import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class CustomCheckboxListTile extends ConsumerWidget  {
  ///The title for the checkboxtile decoration
  final String title;

  ///Sets the value when the user taps outside the textfield
  final void Function(bool?) setValue;

  ///A bool value that allows this widget to disappear
  final bool isVisible;

  final bool readOnly;

  ///The initial value that the textfield should show
  final bool? initialValue;

  const CustomCheckboxListTile({
    super.key,
    required this.title,
    required this.initialValue,
    required this.setValue,
    this.isVisible = true,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: isVisible,
      child: CheckboxListTile(
        title: Text(title),
        checkColor: Colors.white,
        activeColor: themeColor,
        value: initialValue,
        onChanged: readOnly ? null : setValue,
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
