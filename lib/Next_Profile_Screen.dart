// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Next_Profile_Screen extends StatefulWidget {
  const Next_Profile_Screen({super.key});

  @override
  State<Next_Profile_Screen> createState() => _Next_Profile_ScreenState();
}

class _Next_Profile_ScreenState extends State<Next_Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 50),
              child: Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'Today',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  height: 35,
                  width: 110,
                  margin: EdgeInsets.only(right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF2596be),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Add task',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Productive Day. Souarv",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFd6d2c7),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 700,
              child: SfCalendar(
                view: CalendarView.week,
                cellBorderColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
