import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.3, screenWidth * 0.13, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Appointments",
                    style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.2, 0, 0, screenWidth * 0.02),
                    child: Image(
                      image: AssetImage("assets/images/edit.png"),
                      width: screenWidth * 0.06,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            content(),
            Padding(
              padding: EdgeInsets.fromLTRB(0, screenWidth * 0.05, 0, 0),
              child: Image(
                image: AssetImage("assets/images/puzzel.png"),
              ),
            ),
            Text(
              "You have a free day!",
              style: TextStyle(
                  fontSize: screenWidth * 0.05, fontWeight: FontWeight.w500),
            ),
            Text(
              "It’s all clear , relax and recharge.",
              style: TextStyle(
                  fontSize: screenWidth * 0.05, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          child: TableCalendar(
            locale: "en_US",
            rowHeight: 50,
            daysOfWeekHeight: 20,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
            calendarStyle: const CalendarStyle(
              todayDecoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            ),
            availableGestures: AvailableGestures.all,
            onDaySelected: _onDaySelected,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2024, 4, 12),
            lastDay: DateTime.utc(2026, 4, 12),
          ),
        ),
      ],
    );
  }
}
