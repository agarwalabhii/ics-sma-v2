import 'package:anet/features/firm/pages/firm_record_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class FirmRecordWidget extends ConsumerWidget {
  const FirmRecordWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                PDFSelectorButton(
                  icon: Icons.picture_as_pdf,
                  text: "Firm Record",
                  enabled: ref.watch(firmRecordProvider),
                  onTapView: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
