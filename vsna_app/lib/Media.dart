import "package:flutter/material.dart";

class MediaPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image(
          image:
          AssetImage('images/VSNA_Pic1.png'),
        ),
      ),
    );
    /*
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('Media Page',style: TextStyle(fontSize: 36.0),)
    ); */

  }
}