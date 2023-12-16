import 'package:anet/presentation/govform/viewmodel/pdf_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

Future<void> showPdf(BuildContext context, GovformRequest govformRequest) async {
  return await showDialog(
    context: context,
    builder: (BuildContext ctx) {
      return AlertDialog(
        title: null,
        content: PdfWidget(govformRequest: govformRequest),
      );
    },
  );
}

class PdfWidget extends ConsumerStatefulWidget {
  final GovformRequest govformRequest;
  const PdfWidget({
    required this.govformRequest,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<PdfWidget> createState() => _PdfWidgetState();
}

class _PdfWidgetState extends ConsumerState<PdfWidget> {

  @override
  Widget build(BuildContext context) {
    final pdfViewModel = ref.watch(pdfViewModelProvider(widget.govformRequest));
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: pdfViewModel.when(
        loading: () => const SizedBox(
            width: 40, height: 40, child: CircularProgressIndicator()),
        error: (err, stack) => logAsyncError("PdfWidget", err, stack),
        data: (pdf) {
          return Placeholder(
            child: 
            SfPdfViewer.asset('assets/govform/updated.pdf'),
            // SfPdfViewer.asset(
            //   'assets/govform/updated.pdf')
              // 'assets/govform/SurveillanceFoodDefenseNotice.pdf')
          );
        },
      ),
    );
  }
}
