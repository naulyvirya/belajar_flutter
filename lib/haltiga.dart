import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Color> colors = [
  Colors.red,
  Colors.blueAccent,
  Colors.green,
  Colors.purpleAccent,
  Colors.indigo,
  Colors.yellow,
];
List<String> days = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
];

class Haltiga extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Halaman Ketiga'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 200,
                      width: 180,
                      child: Card(
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new SvgPicture.asset(
                              'assets/icons/fast-food.svg',
                              height: 100,
                              width: 100,
                              allowDrawingOutsideViewBox: true,
                            ),
                            new Text('Menu Utama',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 200,
                      width: 180,
                      child: Card(
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new SvgPicture.asset(
                              'assets/icons/diet.svg',
                              height: 100,
                              width: 100,
                              allowDrawingOutsideViewBox: true,
                            ),
                            new Text('Menu Utama',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Center(
                child: Text(
                  '- List Menu -',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                height: 240,
                width: 400,
                margin: EdgeInsets.all(6),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 180,
                        margin: EdgeInsets.all(2),
                        child: Card(
                          color: colors[index],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text(days[index],
                                    style: TextStyle(fontSize: 20)),
                              ),
                              SvgPicture.asset(
                                'assets/icons/menu.svg',
                                height: 140,
                                width: 150,
                                alignment: Alignment.bottomCenter,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      width: 120,
                      child: Card(
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new SvgPicture.asset(
                              'assets/icons/meat.svg',
                              height: 50,
                              width: 50,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      width: 120,
                      child: Card(
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new SvgPicture.asset(
                              'assets/icons/soft-drink.svg',
                              height: 50,
                              width: 50,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      width: 120,
                      child: Card(
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new SvgPicture.asset(
                              'assets/icons/cola.svg',
                              height: 50,
                              width: 50,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
