import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// ignore: must_be_immutable
class CustomCalendarWidget extends StatelessWidget {
  CustomCalendarWidget({super.key});
  final DateTime _today = DateTime.now();
  final CalendarController _controller = CalendarController();
  final List<Meeting> meetings = <Meeting>[];

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      controller: _controller,
      onTap: calendarTapped,
      onLongPress: calendarLongPressed,
      allowViewNavigation: true,
      allowedViews: const [],
      showNavigationArrow: true,
      dataSource: MeetingDataSource(_getRemindersDataSource()),
      view: CalendarView.month,
      initialDisplayDate: _today,
      todayHighlightColor: Colors.amber,
    );
  }

  void calendarLongPressed(CalendarLongPressDetails details) async {
  }

  void calendarTapped(CalendarTapDetails details) {
    if (details.targetElement == CalendarElement.appointment) {
      debugPrint("Tapped ${details.targetElement.name}");
    }
    if (details.targetElement == CalendarElement.header) {
      _controller.view = CalendarView.month;
      debugPrint("Tapped ${details.targetElement.name}");
    }

    if (details.targetElement == CalendarElement.calendarCell) {
      debugPrint("Tapped ${details.targetElement.name}");
      _controller.view = CalendarView.day;
    }
  }

  List<Meeting> _getRemindersDataSource() {
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        "Leo's Deli", startTime, endTime, const Color(0xFF0F8644), true));
    meetings.add(
      Meeting(
        "Lou's Deli",
        startTime.add(
          const Duration(days: 1),
        ),
        startTime.add(
          const Duration(days: 1, hours: 2),
        ),
        Colors.blue,
        true,
      ),
    );
    meetings.add(
      Meeting(
        "Luigi's Deli",
        startTime.add(
          const Duration(days: 10),
        ),
        startTime.add(
          const Duration(days: 10, hours: 4),
        ),
        Colors.blue,
        true,
      ),
    );
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
