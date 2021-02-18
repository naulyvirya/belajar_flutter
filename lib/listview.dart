import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Color> colors = [
    Colors.indigo,
    Colors.blueGrey,
    Colors.amberAccent,
    Colors.blue,
    Colors.deepOrangeAccent,
    Colors.cyan,
  ];

  List<Color> colors2 = [
    Colors.red,
    Colors.brown,
    Colors.teal,
    Colors.yellow,
    Colors.purple,
    Colors.green
  ];

  List<Color> colors3 = [
    Colors.amberAccent,
    Colors.blueGrey,
    Colors.redAccent,
    Colors.blue,
    Colors.brown,
    Colors.greenAccent,
    Colors.green,
    Colors.blueAccent,
    Colors.yellowAccent,
    Colors.purple,
    Colors.pink,
    Colors.deepPurpleAccent,
  ];

  List<String> namePerson = ['Ableh', 'Boa', 'Ari', 'Erik', 'Patur', 'Rama'];
  List<String> namePerson2 = [
    'Aldi',
    'Boces',
    'Rafli',
    'Ferdi',
    'Radenlada',
    'Kemal'
  ];

  List<String> namePerson3 = [
    'Ripki',
    'Ojan',
    'Ikoy',
    'Anes',
    'Ewok',
    'Alip',
    'Ijal',
    'Yusup',
    'Indra',
    'Irsal',
    'Rifa',
    'Hilmi',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listview Builder'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    padding: EdgeInsets.only(top: 30),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200,
                          child: Card(
                            color: colors[index],
                            child: Center(
                              child: Text(
                                namePerson[index],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: 300,
                    width: 500,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: colors2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 150,
                          child: Card(
                            color: colors2[index],
                            child: Center(
                              child: Text(
                                namePerson2[index],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors3.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          height: 50,
                          child: Card(
                            color: colors3[index],
                            child: Center(
                              child: Text(
                                namePerson3[index],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors3.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          height: 50,
                          child: Card(
                            color: colors3[index],
                            child: Center(
                              child: Text(
                                namePerson3[index],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
