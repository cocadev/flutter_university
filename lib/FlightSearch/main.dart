import 'package:flutter/material.dart';
import 'home_page.dart';

class FlightSearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Search',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new HomePage(),
    );
  }
}