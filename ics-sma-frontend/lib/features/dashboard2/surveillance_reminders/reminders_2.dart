import 'package:anet/features/dashboard/surveillance_reminders/calendar_widget.dart';
import 'package:anet/features/dashboard/surveillance_reminders/reminders_listview.dart';
import 'package:flutter/material.dart';

Color mainBlueColor = const Color(0xFF203864);
Color mainBlueBackground = const Color(0xFF637A98);
Color mainLightBlueBackground = const Color(0xFFE5ECF7);

class SurveillanceReminders2 extends StatefulWidget {
  const SurveillanceReminders2({super.key});

  @override
  State<SurveillanceReminders2> createState() => _SurveillanceReminders2State();
}

class _SurveillanceReminders2State extends State<SurveillanceReminders2> {
  bool toggleList = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: mainLightBlueBackground,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8.0),
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SURVEILLANCE REMINDERS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                                toggleList ? Icons.list : Icons.calendar_month),
                            onPressed: () {
                              setState(() {
                                toggleList = !toggleList;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            toggleList
                ? Container(
                    clipBehavior: Clip.hardEdge,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(8.0),
                        ),
                        color: Colors.white),
                    child: CustomCalendarWidget(),
                  )
                : Container(
                    clipBehavior: Clip.hardEdge,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(8.0),
                        ),
                        color: Colors.white),
                    child: RemindersListView(),
                  )
          ],
        ),
      ),
    );
  }
}
