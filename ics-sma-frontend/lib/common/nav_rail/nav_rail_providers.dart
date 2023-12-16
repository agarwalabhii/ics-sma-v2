import 'nav_rail_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navRailProvider = StateNotifierProvider<NavRailNotifier, NavRailModel>(
    (_) => NavRailNotifier(const NavRailModel(0, false, false)));

//https://medium.com/@boylenssen/yet-another-tale-about-riverpod-74ed53596bbf
