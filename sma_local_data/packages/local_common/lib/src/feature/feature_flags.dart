import 'package:shared_preferences/shared_preferences.dart';

const featureFlagPrefsName = "featureFlags";

enum FeatureFlags {
  dashboard2(title: 'Dashboard 2');

  final String title;

  const FeatureFlags({required this.title});

  static List<bool> flags = List.filled(FeatureFlags.values.length, false);

  static Future<void> initialize() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var flag in FeatureFlags.values) {
      final value = prefs.getBool(flag.name);
      flags[flag.index] = (value != null) ? value : false;
    }
  }

  static bool isEnabled(FeatureFlags flag) {
    if (flags.isEmpty) {
      return false;
    }
    return flags[flag.index];
  }

  static void toggleFlag(FeatureFlags flag) {
    if (flags.isNotEmpty) {
      final newValue = !flags[flag.index];
      flags[flag.index] = newValue;
      save(flag, newValue);
    }
  }

  static Future<void> save(FeatureFlags flag, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(flag.name, value);
  }
}
