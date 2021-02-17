import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Color> colors = [
    Colors.amber,
    Colors.yellow,
    Colors.orange,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.red,
    Colors.deepOrange
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 200,
                          color: Colors.pink,
                        ),
                        Container(
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          width: 200,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 200,
                          color: Colors.cyan,
                        ),
                        Container(
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          width: 200,
                          color: Colors.teal,
                        ),
                        Container(
                          width: 200,
                          color: Colors.amber,
                        ),
                        Container(
                          width: 200,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 200,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 200,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 150,
                          color: colors[index],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 500,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 150,
                          color: colors[index],
                        );
                      },
                    ),
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
