import 'package:flutter/material.dart';
import 'detail.dart';

class Inputs extends StatefulWidget {
  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<Inputs> {

  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Text('Inputs Screen'),
      ),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              focusNode: nodeOne,
              textCapitalization: TextCapitalization.sentences,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300),
              maxLines: 3,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.print),
                  helperText: "Hello",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              focusNode: nodeTwo,
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              cursorRadius: Radius.circular(16.0),
              cursorWidth: 16.0,
              maxLength: 4,
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.print),
                  hintText: "Demo Text",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
              ),
            ),
            RaisedButton(
              onPressed: () {
                FocusScope.of(context).requestFocus(nodeTwo);
              },
              child: Text("Next Field"),
            ),
          ]
      ),
    );
  }
}