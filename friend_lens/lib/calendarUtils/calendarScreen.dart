import 'package:flutter/material.dart';
import 'package:friend_lens/homeutils/sendButton.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:friend_lens/constants.dart';

import '../pages/sent.dart';

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 12, kToday.day);
final kLastDay = DateTime.now();

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});
  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month; //month, twoWeeks, week
  DateTime _focusedDay = DateTime.now(); //current time
  DateTime? _selectedDayStart;
  DateTime? _selectedDayEnd;
  var startDay = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Select a timeframe",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
          backgroundColor: CYAN,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: TableCalendar(
                //this is the calendar
                firstDay: kFirstDay,
                lastDay: kLastDay,
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDayStart, day) ||
                      isSameDay(_selectedDayEnd, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (startDay) {
                    if (!isSameDay(_selectedDayStart, selectedDay)) {
                      setState(() {
                        _selectedDayStart = selectedDay;
                        _focusedDay = focusedDay;
                        startDay = !startDay;
                      });
                    }
                  } else {
                    if (!isSameDay(_selectedDayEnd, selectedDay)) {
                      setState(() {
                        _selectedDayEnd = selectedDay;
                        _focusedDay = focusedDay;
                        startDay = !startDay;
                      });
                    }
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ),
            Container(
                child: (_selectedDayStart == null) && (_selectedDayEnd == null)
                    ? const Center(
                        child: Text('Please select a start and end date'))
                    : _selectedDayStart == null
                        ? const Center(
                            child: Text("Please select a start date."))
                        : _selectedDayEnd == null
                            ? const Center(
                                child: Text("Please select an end date."))
                            : (_selectedDayEnd!.isBefore(_selectedDayStart!))
                                ? const Center(
                                    child: Text(
                                        "End date is before start, please try again."))
                                : SendButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SentScreen()));
                                    },
                                    title: 'Send',
                                  ))
          ],
        ));
  }
}
