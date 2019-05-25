import 'package:flutter/material.dart';
//import 'demo/second.dart';
//import 'demo/image.dart';
//import 'demo/timer.dart';
//import 'demo/guide.dart';
//import 'demo/inputs.dart';
import 'twitter/main.dart';
import 'whatsapp/main.dart';
import 'TodoAppUI/main.dart';
import 'FlightSearch/main.dart';
import 'chess/main.dart';
import 'easyPip/main.dart';

class Router extends StatefulWidget {
  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: new EdgeInsets.all(15.0), // Or set whatever you want
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              margin:
                  const EdgeInsets.only(top: 12.0, bottom: 10.0, left: 10.0),
              child: new Text(
                "FunnyJerry Flutter",
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            new Container(
                margin: const EdgeInsets.all(10.0),
                child: Column(children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EasyPipApp()));
                    },
                    child: const Text('Goto EasyPiP',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyChessApp()));
                    },
                    child: const Text('Goto Chess Game',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlightSearchApp()));
                    },
                    child: const Text('Goto FlightSearchApp',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TodoApp()));
                    },
                    child: const Text('Goto TodoApp',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WhatsApp()));
                    },
                    child: const Text('Goto WhatsApp',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TwitterApp()));
                    },
                    child: const Text('Goto TwitterApp',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                  ),
                ]))

//            Center(
//              child: RaisedButton(
//                child: Text("TextInput"),
//                onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => Inputs()) );
//                },
//                color: Colors.amber,
//              ),
//            ),
//            Center(
//              child: RaisedButton(
//                child: Text("Guide"),
//                onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => Guide(title:'Beginner Guide')) );
//                },
//                color: Colors.amber,
//              ),
//            ),
//            Center(
//              child: RaisedButton(
//                child: Text("Navigate to page 2"),
//                onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => Second(title: "Página 2",)) );
//                },
//                color: Colors.amber,
//              ),
//            ),
//            Center(
//              child: RaisedButton(
//                child: Text("Navigate to page image"),
//                onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageScreen()) );
//                },
//                color: Colors.amber,
//              ),
//            ),
//            Center(
//              child: RaisedButton(
//                child: Text("My Timer"),
//                onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyTimerApp()) );
//                },
//                color: Colors.amber,
//              ),
//            ),
          ],
        ));
  }
}
