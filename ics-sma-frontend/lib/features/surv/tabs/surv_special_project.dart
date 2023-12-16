import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class SurvSpecialProjectTab extends ConsumerWidget {
  const SurvSpecialProjectTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: SelectionRowWidget(
        label: "??? Was food defense conducted?",
        initialValue: null,
        setValue: (value) {},
      ),
    );
  }
}
