import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;
  late CalendarFormat _calendarFormat;

  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _selectedDay = DateTime.now();
    _calendarFormat = CalendarFormat.month;
  }

  // function to get events for a specific date
  List<String> _getEventsForDay(DateTime day) {
    // replace with your event fetching logic
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'C A L E N D A R',
        style: TextStyle(fontSize: 26),
      )),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            calendarFormat: _calendarFormat,
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format; // update format when changed
              });
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay; // update selected day
                _focusedDay = focusedDay; // update focused day
              });
            },
            onPageChanged: (focusedDay) {
              setState(() {
                _focusedDay =
                    focusedDay; // update focused day when page changes
              });
            },
            eventLoader: _getEventsForDay,
          ),
          ..._getEventsForDay(_selectedDay)
              .map((event) => ListTile(title: Text(event))),
        ],
      ),
    );
  }
}
