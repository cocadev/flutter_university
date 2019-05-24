import 'package:flutter/material.dart';
import 'pages/developer_details_page.dart';
import 'pages/home_page.dart';
import 'pages/openings_page.dart';
import 'pages/pieces_page.dart';
import 'pages/play_game_page.dart';
import 'pages/splash_screen.dart';


class MyChessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: Theme.of(context).platform == TargetPlatform.android ? "Raleway" : null,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_page': (context) => HomePage(),
        '/pieces_page': (context) => PiecesPage(),
        '/openings_page': (context) => OpeningsPage(),
        '/play_game_page': (context) => PlayGamePage(),
        '/developer_details_page': (context) => DeveloperDetailsPage(),
      },
    );
  }
}




