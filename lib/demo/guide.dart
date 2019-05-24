import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  String title;

  Guide({Key key, @required this.title}) : super(key: key);

  @override
  _GuideState createState() => _GuideState();
}

class _GuideState extends State<Guide> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  "Hello World",
                  textAlign: TextAlign.center,
                  style: TextStyle( // we use the [TextStyle] widget to customize text
                    color: Color(0xFFFD620A), // set the color
                    fontSize: 32.0, // and the font size
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Bem vindo",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              Center(
                child: GestureDetector( // just a normal widget
                  onTap: () { // one of the [GestureDetector] properties
                    setState(() {
                      // Using setState() is required to trigger lifecycle hooks
                      // so the widget will know that it should be updated
                      ++counter;
                    });
                  },
                  child: Container( // the [Container] will represent our button
                    decoration: BoxDecoration( // this is how you style the [Container]
                      shape: BoxShape.circle, // change its shape from rectangular to circular
                      color: Color(0xFF17A2B8), // and paint it in blue
                    ),
                    width: 80.0,
                    height: 80.0,
                    child: Center(
                      child: Text( // here we print the value of the [counter]
                        '$counter', // to see how it changes
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Content(),
              )
            ]));
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Counter('Manchester United'),
        Counter('Juventus'),
      ],
    );
  }
}

class Counter extends StatefulWidget {
  final String _name;
  Counter(this._name);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFD6A02)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // [widget] is the property of the State class that stores
          // the instance of the [StatefulWidget] ([Counter] in our case)
          _CounterLabel(widget._name),
          _CounterButton(
            count,
            onPressed: () {
              setState(() {
                ++count;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _CounterLabel extends StatelessWidget {
  static const textStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 26.0,
  );

  final String _label;
  _CounterLabel(this._label);

  @override
  Widget build(BuildContext context) {
    return Text(
      _label,
      style: _CounterLabel.textStyle,
    );
  }
}

class _CounterButton extends StatelessWidget {
  final count;
  final onPressed;
  _CounterButton(this.count, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: Color(0xFFFD6A02),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
