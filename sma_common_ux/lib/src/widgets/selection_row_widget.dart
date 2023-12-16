import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/widgets/custom_seg_select_2.dart';

class SelectionRowWidget extends ConsumerWidget {
  final String label;
  final void Function(bool?) setValue;
  final bool isVisible;
  final bool? initialValue;
  final bool readOnly;

  const SelectionRowWidget({
    super.key,
    required this.label,
    required this.setValue,
    this.isVisible = true,
    required this.initialValue,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Wrap(
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return SegSelector2(
                  readOnly: readOnly,
                  initialValue: initialValue,
                  setValue: (value) {
                    setValue(value);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
