// ignore_for_file: library_private_types_in_public_api

import 'package:drink_buddy/themes/app_theme.dart';
import 'package:drink_buddy/themes/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CustomCalendarScreen extends StatefulWidget {
  const CustomCalendarScreen({super.key});

  @override
  _CustomCalendarScreenState createState() => _CustomCalendarScreenState();
}

class _CustomCalendarScreenState extends State<CustomCalendarScreen> {
  final DateTime _firstDay = DateTime.now();
  final DateTime _lastDay = DateTime(DateTime.now().year + 1, 12, 31);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).primaryBlueLight,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
          child: Column(
            children: calendarList(),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 3,
        onItemSelected: (p0) {},
      ),
    );
  }

  List<Widget> calendarList() {
    List<Widget> calendarWidgets = [];
    DateTime currentMonth = DateTime.now();

    for (int i = 0; i < 12; i++) {
      calendarWidgets.add(Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.grey.shade300,
            child: Text(
              DateFormat('MMMM yyyy').format(currentMonth),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          TableCalendar(
            firstDay: _firstDay,
            lastDay: _lastDay,
            focusedDay: currentMonth,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarFormat: CalendarFormat.month,
            headerVisible: false,
            availableGestures: AvailableGestures.none,
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
              weekendStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
            calendarStyle: const CalendarStyle(
              defaultTextStyle: TextStyle(color: Colors.black),
              weekendTextStyle: TextStyle(color: Colors.black),
              outsideDaysVisible: false,
            ),
            eventLoader: (day) => ['glass'],
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                if (events.isNotEmpty) {
                  return const Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(Icons.local_bar, color: Colors.black, size: 14),
                  );
                }
                return null;
              },
            ),
          ),
        ],
      ));
      currentMonth = DateTime(currentMonth.year, currentMonth.month + 1, 1);
    }

    return calendarWidgets;
  }
}
