import 'package:anet/presentation/govform/usecase/create_pdf_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

part 'pdf_viewmodel.g.dart';

@riverpod
class PdfViewModel extends _$PdfViewModel {
  late final _createUsecase = ref.read(createPdfUsecaseProvider.notifier);

  @override
  FutureOr<PdfDocument> build(GovformRequest request) async {
    return await _createUsecase.create(request);
  }
}
