import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

Widget logAsyncError(String name, Object err, StackTrace stack) {
  final message = 'Name: $name, Error: $err, Stack: $stack';

  // send to developer log
  developer.log(message, name: name);

  // print to stdout
  if (kDebugMode) {
    print(message);
  }

  return const SizedBox(height: 0.01);
}
