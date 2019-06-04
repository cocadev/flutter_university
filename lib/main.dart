import 'package:flutter/material.dart';
import 'router.dart';

import 'WidgetUniversity/text_widget.dart';
import 'whatsapp/main.dart';
import 'TodoAppUI/main.dart';
import 'FlightSearch/main.dart';
import 'YouTube/main.dart';
import 'Randomize/main.dart';
import 'FlutterBoxBar/main.dart';

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
        'Appbar': (BuildContext context) => WhatsApp(),
        'Container' : (BuildContext context) => TodoApp(),
        'Column' : (BuildContext context) => FlightSearchApp(),
        'Row' : (BuildContext context) => YoutubeApp(),
        'Button' : (BuildContext context) => Randomize(),
        'Stack2q' : (BuildContext context) => BoxApp(),
        'Stack1' : (BuildContext context) => BoxApp(),
        'Stack2' : (BuildContext context) => BoxApp(),
        'Stack3' : (BuildContext context) => BoxApp(),
        'Stack4' : (BuildContext context) => BoxApp(),
        'Stack5' : (BuildContext context) => BoxApp(),
      },
    );
  }
}