import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Navigation Route",
    home: new HalamanSatu(),
    routes: <String, WidgetBuilder>{
      '/HalamanSatu': (BuildContext context) => new HalamanSatu(),
      '/HalamanDua': (BuildContext context) => new HalamanDua(),
    },
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: Text("Navigation Route"),
        )
      ),

      body: new Center(
        child: new RaisedButton(
          child: new Text('Satu'),
         onPressed: (){
           Navigator.pushNamed(context, '/HalamanDua');
         },
        ),
      ),

    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: Text("Navigation Route 2"),
        )
      ),

      body: new Center(
        child: new RaisedButton(
         child: new Text('Dua'),
         onPressed: (){
           Navigator.pushNamed(context, '/HalamanSatu');
         },
        ),
      ),

    );
  }
}