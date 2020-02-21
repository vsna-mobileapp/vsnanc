import "package:flutter/material.dart";
import './Home.dart';
import './Event.dart';
import './About.dart';
import './Media.dart';
import './Profile.dart';

void main() => runApp(VSNAApp());

class VSNAApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return VSNAMain();
  }
}

class VSNAMain extends State<VSNAApp> {
  int _selectedpage = 0;
  final _pageOptions = [
 HomePage(),
 EventPage(),
 AboutPage(),
 MediaPage(),
 ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VSNA APP",
         theme: new ThemeData.dark(),
         home: Scaffold(
         appBar: AppBar(
          title: Text('Welcome to VSNA Northern California') , centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
         ),
        body: _pageOptions[_selectedpage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedpage,
          onTap: (int index) {
            setState(() {
              _selectedpage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'), backgroundColor: Colors.deepOrangeAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.event_available), title: Text('Events'), backgroundColor: Colors.deepOrangeAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.info), title: Text('About Us'), backgroundColor: Colors.deepOrangeAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_library), title: Text('Media'), backgroundColor: Colors.deepOrangeAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), title: Text('My Profile'), backgroundColor: Colors.deepOrangeAccent),
          ],
        ),
      ),
    );
  }
}
