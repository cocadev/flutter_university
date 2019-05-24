import 'package:flutter/material.dart';

class Second extends StatefulWidget {

  String title;

  Second({Key key, @required this.title}) : super(key:key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
         child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
          child: Text("back to page 1 ${widget.title}"),
        ),
      ),
    );
  }
}