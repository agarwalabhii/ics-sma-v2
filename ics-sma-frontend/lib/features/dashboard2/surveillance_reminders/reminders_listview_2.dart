import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RemindersListView2 extends StatelessWidget {
  RemindersListView2({super.key});
  List<ReminderItem> items = _getReminderItems();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2 - 45,
      child: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // final reminderDate = DateTime()
          final remainingDays = getRemainingDays(items[index].date!);

          return ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: GestureDetector(
              onTap: () {
                debugPrint(
                    "Navigate to the ${items[index].firmName} surveillance when tapped.");
              },
              child: Text(
                "${items[index].firmName}",
                style: const TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            trailing: ConstrainedBox(
              constraints: const BoxConstraints.expand(width: 120),
              child: Text(
                "Creator:\n${items[index].creator}",
              ),
            ),
            subtitle: Text("Days remining: $remainingDays"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
  // Text(
  //             "Creator:\n${items[index].creator}",
  //           ),

  String getRemainingDays(String input) {
    List<String> initialData = input.split("/");
    if (initialData.length < 3) {
      return "N/A";
    }
    final reminder = DateTime(int.parse(initialData[2]),
        int.parse(initialData[0]), int.parse(initialData[1]));
    debugPrint(reminder.toString());
    final days = reminder.difference(DateTime.now()).inDays;
    debugPrint(days.toString());
    final output = days.toString();
    return output;
  }
}

List<ReminderItem> _getReminderItems() {
  return [
    ReminderItem("Thingymajigs Unlimited", "Delicious Canolis", "05/10/2023",
        "Johnathan Hamric"),
    ReminderItem(
        "Leo's Deli", "Cigarette Salad", "06/20/2023", "Johnathan Hamric"),
    ReminderItem("Lou's Deli", "Sweet Treats", "07/02/2023", "Steve Trimbly"),
    ReminderItem(
        "A-1 Eggs n' Stuff", "Get the BLT. Yum", "06/19/2023", "Steve Trimbly"),
    ReminderItem("123 German Sausages", "It's the wurst", "07/02/2023",
        "Alica, Holmquist"),
    ReminderItem("Thingymajigs Unlimited", "Delicious Canolis", "05/10/2023",
        "Johnathan Hamric"),
    ReminderItem(
        "A-1 Eggs n' Stuff", "Get the BLT. Yum", "06/19/2023", "Steve Trimbly"),
    ReminderItem("123 German Sausages", "It's the wurst", "07/02/2023",
        "Alica Holmquist"),
    ReminderItem("Thingymajigs Unlimited", "Delicious Canolis", "05/10/2023",
        "Johnathan Hamric"),
    ReminderItem(
        "A-1 Eggs n' Stuff", "Get the BLT. Yum", "06/19/2023", "Steve Trimbly"),
    ReminderItem("123 German Sausages", "It's the wurst", "07/02/2023",
        "Alica Holmquist"),
  ];
}

class ReminderItem {
  String? firmName;
  String? description;
  String? date;
  String? creator;
  ReminderItem(this.firmName, this.description, this.date, this.creator);
}
