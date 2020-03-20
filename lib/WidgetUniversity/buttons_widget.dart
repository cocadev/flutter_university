import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.lightBlue,
                disabledTextColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                elevation: 20.0,
                splashColor: Colors.green,
                highlightColor: Colors.red,
                highlightElevation: 1.0,
                child: Text("Raised Button"),
              ),
              


            ],
          ),
        ),
      ),
    );
  }
}
