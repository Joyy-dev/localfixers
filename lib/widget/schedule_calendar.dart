import 'package:flutter/material.dart';

class ScheduleCalendar extends StatefulWidget {
  const ScheduleCalendar({super.key});

  @override
  State<ScheduleCalendar> createState() => _ScheduleCalendarState();
}

class _ScheduleCalendarState extends State<ScheduleCalendar> {
  DateTime? onSelectedDate;

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker(
      initialDate: DateTime.now(), 
      firstDate: DateTime.now(), 
      lastDate: DateTime(2060), 
      onDateChanged: (DateTime pickedDate) {
        setState(() {
          onSelectedDate = pickedDate;
        });
      },
      
    );
  }
}