import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

class FormSaveButton extends ConsumerWidget {
  final bool readOnly;

  const FormSaveButton({required this.readOnly, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VoidCallback? onPressedFunc;
    if (!readOnly) {
      onPressedFunc = () {
        final appUser = ref.watch(appUserProvider);
        ref.watch(formActionProvider.notifier).state =
            SaveFormAction.saveAsDraft(appUser.userData?.id ?? 0, appUser.employeeData?.firstName ?? "N/A", null);
      };
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.blue,
      ),
      onPressed: onPressedFunc,
      child: Text(
        "Save as Draft",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
