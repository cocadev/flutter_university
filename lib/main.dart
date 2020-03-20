import 'package:flutter/material.dart';
import 'router.dart';

import 'WidgetUniversity/text_widget.dart';
import 'WidgetUniversity/stack_widget.dart';
import 'WidgetUniversity/row_widget.dart';
import 'Samples/Calendar/main.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Widgets Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        'Text': (BuildContext context) => TextWidget(),
        'Stack': (BuildContext context) => StackWidget(),
        'Row': (BuildContext context) => RowWidget(),
        'Calendar': (BuildContext context) => CalendarApp(),
      },
    );
  }
}