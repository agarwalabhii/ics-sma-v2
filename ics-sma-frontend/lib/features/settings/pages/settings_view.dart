import 'package:anet/common/nav_rail/nav_rail.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  final mainBlueColor = const Color(0xFF203864);
  final greyBackground = const Color(0xFFf1f1f1);

  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainBlueColor,
      ),
      backgroundColor: greyBackground,
      body: const Row(
        children: [
          NavRail(),
          Expanded(
            child: Text("Settings Page"),
          ),
        ],
      ),
    );
  }
}
