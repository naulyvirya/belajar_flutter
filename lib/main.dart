import 'package:flutter/material.dart';
import 'haldua.dart';
import 'haltiga.dart';

void main() {
  runApp(
    new MaterialApp(
      // pertama kali di run hal1
      home: new Halsatu(),
      title: "Navigasi",
      // membuat routing
      // daftar nama route untuk setiap halaman
      routes: <String, WidgetBuilder>{
        // tuliskan alamat class yg akan dituju
        '/Halsatu': (BuildContext context) => new Halsatu(),
        '/Haldua': (BuildContext context) => new Haldua(),
        '/Haltiga': (BuildContext context) => new Haltiga(),
      },
    ),
  );
}

//class halsatu dengan nilai balik scaffold
class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // judul appbar diatas
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      // icon button
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.android,
            size: 50.0,
            color: Colors.green,
          ),
          // navigation
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}
