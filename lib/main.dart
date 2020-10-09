import 'package:flutter/material.dart';
import 'package:mission1_flutterwidgets/pages/booking.dart';
import 'package:mission1_flutterwidgets/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/booking': (context) => Booking(),
      },
    );
  }
}
