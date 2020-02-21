import "package:flutter/material.dart";
import "package:cloud_firestore/cloud_firestore.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}
  class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  Widget _buildListItem(BuildContext context, DocumentSnapshot document ) {
  return ListTile(
    title: Row(
      children: [
      Expanded(
        child: Text(
          document['Feed_Desc'],
          //style: Theme.of(context).textTheme.headline,
        style: new TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 20.0
        ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color(0xFF7ec0ee),
        ),
      padding: const EdgeInsets.all(10.0),
      ),
    ],
    ),
    onTap: (){
      print("Call the respective Pages");
    },
    );
  }

  @override
  Widget build(BuildContext context)
  {
  return Scaffold(
 body:
  StreamBuilder(
  stream: Firestore.instance.collection('Feed_Home').snapshots(),
  builder: (context,snapshot) {
  if(!snapshot.hasData) return const Text('Loading...');
  return ListView.builder(
  itemExtent: 80.0,
  itemCount: snapshot.data.documents.length,
  itemBuilder: (context,index) => _buildListItem(context,snapshot.data.documents[index]),
  );
  }),
  //],
  );
  }
  }
