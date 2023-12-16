import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormEditButton extends ConsumerWidget {
  final bool readOnly;
  const FormEditButton({required this.readOnly, super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VoidCallback? onPressedFunc;
    if (!readOnly) {
      onPressedFunc = () {
      };
    }
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.blue,
      ),
      onPressed: onPressedFunc,
      child: Text(
        "Edit",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
