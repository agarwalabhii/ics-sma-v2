import 'package:flutter_riverpod/flutter_riverpod.dart';

final saveSignalProvider = StateProvider<DateTime>((ref) => DateTime.now());
