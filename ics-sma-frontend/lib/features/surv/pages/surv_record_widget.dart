import 'package:anet/features/surv/pages/surv_record_provider.dart';
import 'package:anet/presentation/govform/view/pdf_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class SurvRecordWidget extends ConsumerWidget {
  const SurvRecordWidget({required this.survId, super.key});
  final int survId;

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
                    text: "Surveillance Record",
                    enabled: ref.watch(survRecordProvider),
                    onTapView: () {},),
                PDFSelectorButton(
                    icon: Icons.picture_as_pdf,
                    text: "FSIS Form 5420-3",
                    enabled: ref.watch(survRecordProvider),
                    onTapView: () async {
                      showPdf(context, GovformRequest.form5420V3(survId));
                    }),
                PDFSelectorButton(
                    icon: Icons.picture_as_pdf,
                    text: "FSIS Form 8160-1",
                    enabled: ref.watch(survRecordProvider),
                    onTapView: () async {
                      showPdf(context, GovformRequest.form8160V1(survId));
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
