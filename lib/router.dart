import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widgetList = ["Text", "Stack", "Row", "Calendar"];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterLogo(),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: new Text(
                "Title with ListView",
              ),
            ),
          ],
        ),
        backgroundColor: Colors.red[200],
        elevation: 4.0,
        actions: [
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.blueGrey,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.yellow,
            fontSize: 36.0
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: widgetList.length,
          shrinkWrap: true,
          itemBuilder: (builder, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('${widgetList[index]}');
                },
                child: Card(
                  elevation: 2.0,
                  child: new Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.sentiment_very_satisfied),
                          Text(
                            widgetList[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            );
          }),
    );
  }
}
