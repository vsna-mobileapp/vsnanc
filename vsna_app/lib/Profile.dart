import "package:flutter/material.dart";

class ProfilePage extends StatelessWidget {
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
      child: Text('Home Page',style: TextStyle(fontSize: 36.0),)
    ); */
  }
}