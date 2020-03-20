import 'package:flutter/material.dart';

class ConstraintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Container(
          height: 200.0,
          width: 200.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
              color: Colors.red,
              image: DecorationImage(fit: BoxFit.cover,
                  image: NetworkImage('https://picsum.photos/200/300'))
          ),
        )
    );
  }
}
