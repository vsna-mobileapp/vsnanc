import "package:flutter/material.dart";


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("ABOUT VSNA",
                    style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
                  new Text("Writing Something Here.",style: new TextStyle(fontSize: 15.0),),
                ],
                )
                ),
              ],
          )
        );
     return MaterialApp(
      home: Scaffold(
        body:
        new ListView(
          children: <Widget>[
            new Image.asset('images/Center.PNG',
              fit: BoxFit.cover,
            ),
    titleSection
          ],
        )
        ),
     );
  }
  }
