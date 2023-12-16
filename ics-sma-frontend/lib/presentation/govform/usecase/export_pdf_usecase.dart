// import 'dart:io';

// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:syncfusion_flutter_pdf/pdf.dart';

// part 'export_pdf_usecase.g.dart';

// typedef FirmOwnerInfoFormData = Map<String, dynamic>;

// @riverpod
// class ExportPdfUsecase extends _$ExportPdfUsecase {
//   @override
//   bool build() {
//     return true;
//   }

//   Future<PdfDocument> export() async {
//     final template = File('assets/govform/SurveillanceFoodDefenseNotice.pdf')
//         .readAsBytesSync();
//     late final PdfDocument pdf = PdfDocument(inputBytes: template);
//     final Map<String, PdfField> fieldMap = {};
//     for (int i = 0; i < pdf.form.fields.count; i++) {
//       PdfField field = pdf.form.fields[i];
//       fieldMap.putIfAbsent(field.name!, () => field);
//     }

//     PdfField meatField = fieldMap['meatProducts']!;
//     PdfField eggField = fieldMap['eggProducts']!;
//     PdfField firmNameField = fieldMap['firmName']!;

//     if(firmNameField is PdfTextBoxField){
//       firmNameField.text = 'Walmart';
//       firmNameField.foreColor = PdfColor(200,120,80);
//     }
//     if(meatField is PdfCheckBoxField){
//       meatField.isChecked = true;
//     }
//     if(eggField is PdfCheckBoxField){
//       eggField.isChecked = true;
//     }

//     pdf.form.flattenAllFields();
//     final file = File('updated.pdf');
//     await file.writeAsBytes(await pdf.save());

//     return pdf;
//   }
// }
