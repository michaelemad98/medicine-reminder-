import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
class CalenderWidget extends StatelessWidget {
  const CalenderWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Calendar(
          startOnMonday: true,
          weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
        
          isExpandable: true,
          eventDoneColor: Colors.green,
          selectedColor: Colors.pink,
          todayColor: Colors.blue,
          // dayBuilder: (BuildContext context, DateTime day) {
          //   return new Text("!");
          // },
          eventListBuilder: (BuildContext context,
              List<NeatCleanCalendarEvent> _selectesdEvents) {
            return new Text("!");
          },
          eventColor: Colors.grey,
          locale: 'de_DE',
          todayButtonText: 'Heute',
          expandableDateFormat: 'EEEE, dd. MMMM yyyy',
          dayOfWeekStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
        );
  }
}