import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'create_pdf_usecase.g.dart';

// typedef FirmOwnerInfoFormData = Map<String, dynamic>;

@riverpod
class CreatePdfUsecase extends _$CreatePdfUsecase {
  late final _fetchGovformUsecase = ref.read(fetchGovformUsecaseProvider.notifier);
  @override
  bool build() {
    return true;
  }

  Future<PdfDocument> create(GovformRequest request) async {
    final response = await _fetchGovformUsecase.fetch(request);
    print("response: ${response.body}");

    const formName = 'govform-8160-v1';
    final pdf = await _loadDocument("$formName.pdf");

    Directory directory = await getTemporaryDirectory();
    final pdfFile = join(directory.path, '$formName.temp.pdf');
    final file = File(pdfFile);
    await file.writeAsBytes(await pdf.save());

    return pdf;
  }

  Future<PdfDocument> _populateForm(PdfDocument pdf) async {
    final Map<String, PdfField> fieldMap = {};
    for (int i = 0; i < pdf.form.fields.count; i++) {
      PdfField field = pdf.form.fields[i];

      fieldMap.putIfAbsent(field.name!, () => field);
      print(field.name!);
    }
    print(fieldMap);

    PdfField meatField = fieldMap['meatProducts']!;
    PdfField eggField = fieldMap['eggProducts']!;
    PdfField firmNameField = fieldMap['firmName']!;
    PdfField investigatorName = fieldMap['investigatorName']!;
    PdfField signatureField = fieldMap['investigatorSignature']!;

    Future<PdfFont> getFont(TextStyle style) async {
      //Get the external storage directory
      Directory directory = await getApplicationSupportDirectory();
      //Create an empty file to write the font data
      File file = File('${directory.path}/${style.fontFamily}.ttf');
      List<int>? fontBytes;
      //Check if entity with the path exists
      if (file.existsSync()) {
        print('file exists');
        fontBytes = await file.readAsBytes();
      }
      if (fontBytes != null && fontBytes.isNotEmpty) {
        //Return the google font
        print('font exists');
        return PdfTrueTypeFont(fontBytes, 12);
      } else {
        //Return the default font
        print('font doesnt exist');
        return PdfStandardFont(PdfFontFamily.helvetica, 12);
      }
  }

    // File fontFile = File('google_fonts/CedarvilleCursive-Regular.ttf');

    if(firmNameField is PdfTextBoxField){
      firmNameField.text = 'Walmart';
      firmNameField.foreColor = PdfColor(200,120,80);
      firmNameField.font = await getFont(const TextStyle(fontFamily: 'CedarvilleCursive'));
      // firmNameField.font = PdfTrueTypeFont(fontFile.readAsBytesSync(), 12);//await getFont(GoogleFonts.cedarvilleCursive());
    }
    // if(signatureField is PdfTextBoxField){
    //   signatureField.text = 'Elaheh Jabbarifard';
    //   signatureField.foreColor = PdfColor(200,120,80);
    // }
    if(meatField is PdfCheckBoxField){
      meatField.isChecked = true;
    }
    if(eggField is PdfCheckBoxField){
      eggField.isChecked = true;
    }

    pdf.form.flattenAllFields();
    final file = File('assets/govform/updated.pdf');
    await file.writeAsBytes(await pdf.save());

    return pdf;
  }

  Future<PdfDocument> _loadDocument(String name) async {
    ByteData bytedata = await rootBundle.load('assets/govform/$name');
    Uint8List template = bytedata.buffer.asUint8List();
    return PdfDocument(inputBytes: template);
  }
}
