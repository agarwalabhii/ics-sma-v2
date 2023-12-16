import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormPublishButton extends ConsumerWidget {
  const FormPublishButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.blue,
      ),
      onPressed: null,
      child: Text(
        "Submit",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
