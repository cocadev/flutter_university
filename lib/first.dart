import 'package:flutter/material.dart';
import 'second.dart';
import 'image.dart';
import 'timer.dart';
import 'guide.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Bem vindo",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.amber),
              ),
            ),
            Center(
              child: RaisedButton(
                child: Text("Guide"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Guide(title:'Beginner Guide')) );
                },
                color: Colors.amber,
              ),
            ),
            Center(
              child: RaisedButton(
                child: Text("Navigate to page 2"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Second(title: "Página 2",)) );
                },
                color: Colors.amber,
              ),
            ),
            Center(
              child: RaisedButton(
                child: Text("Navigate to page image"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageScreen()) );
                },
                color: Colors.amber,
              ),
            ),
            Center(
              child: RaisedButton(
                child: Text("My Timer"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyTimerApp()) );
                },
                color: Colors.amber,
              ),
            ),
          ],
        )
    );
  }
}