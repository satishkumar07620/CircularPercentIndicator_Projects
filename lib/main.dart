import 'package:feb23newtask/Last_Card_Calender.dart';
import 'package:feb23newtask/Next_Profile_Screen.dart';
import 'package:feb23newtask/Profile_Screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Profile_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
