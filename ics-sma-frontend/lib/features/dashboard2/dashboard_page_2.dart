// ignore_for_file: library_private_types_in_public_api
import 'package:anet/common/widgets/anet_appbar.dart';
import 'package:anet/features/dashboard/recent_surveillances/widgets/recent_surveillances.dart';
import 'package:anet/common/nav_rail/nav_rail.dart';
import 'package:flutter/material.dart';

Color mainBlueColor = const Color(0xFF203864);
Color mainBlueBackground = const Color(0xFF637A98);
Color mainLightBlueBackground = const Color(0xFFE5ECF7);
Color blueBackground = const Color(0xFF3F526D);

class DashboardPage2 extends StatefulWidget {
  const DashboardPage2({Key? key}) : super(key: key);

  @override
  _DashboardPage2State createState() => _DashboardPage2State();
}

class _DashboardPage2State extends State<DashboardPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnetAppbar("Dashboard 2"),
      backgroundColor: blueBackground,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          const NavRail(),
          //Recent Surveillances ************
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                RecentSurveillences(),
                // const SurveillanceReminders(),
                // const DashboardFirms(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
