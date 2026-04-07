import 'package:flutter/material.dart';
import 'package:localfixers/screens/home_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreens(),
      color: Color(0xFFEEF0FF),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Colors.grey,
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        scaffoldBackgroundColor: Color(0xFFEDF0FF),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFEEF0FF),
          foregroundColor: Color(0xFF0D2C6E),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF0D2C6E),
            fontSize: 23
          ),
        )
      ),
    );

  }
}