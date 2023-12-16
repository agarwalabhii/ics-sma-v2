import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Future<String> getPathForAssetsFile(
    String srcAssetsFile, String destFile) async {
  if (!File(destFile).existsSync()) {
    ByteData data = await rootBundle.load(srcAssetsFile);
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(destFile).writeAsBytes(bytes);
  }
  if (kDebugMode) {
    print(destFile);
  }
  return destFile;
}
