import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    padding: EdgeInsets.only(top: 20),
                    color: Colors.blueAccent,
                  ),
                  Container(
                    height: 300,
                    padding: EdgeInsets.only(top: 20),
                    color: Colors.blueAccent,
                    child: Text("Batagor"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
