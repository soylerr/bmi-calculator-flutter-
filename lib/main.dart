import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Manrope Bold',
        primaryColor: Color(0xff0f153a),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double height = 180;
  int weight = 50;
  int age = 19;
  double bmi = 0;
  final Color sadeBeyaz = Color(0xffbabccb);
  final TextStyle genelTextStil = TextStyle(
    letterSpacing: 1,
    color: Color(0xffbabccb),
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  final TextStyle buyukTextStil = TextStyle(
    letterSpacing: 1,
    color: Colors.white,
    fontSize: 48,
    fontWeight: FontWeight.bold,
  );

  final BoxDecoration genelBoxDecoration = BoxDecoration(
    color: Color(0xff141a3c), //141a3c
    borderRadius: BorderRadius.circular(5),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      backgroundColor: Color(0xff0b1033),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff272a4e),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  MdiIcons.genderMale,
                                  size: 80,
                                  color: sadeBeyaz,
                                ),
                                Text(
                                  "MALE",
                                  style: genelTextStil,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff272a4e),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  MdiIcons.genderFemale,
                                  size: 80,
                                  color: sadeBeyaz,
                                ),
                                Text(
                                  "FEMALE",
                                  style: genelTextStil,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: genelBoxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: genelTextStil,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            "${height.floor()}",
                            style: buyukTextStil,
                          ),
                          Text(
                            "cm",
                            style: genelTextStil,
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Color(0xfffe0167),
                        onChanged: (double value) {
                          setState(() {
                            height = value;
                          });
                        },
                        min: 50,
                        max: 250,
                        value: height,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: genelBoxDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "WEIGHT",
                              style: genelTextStil,
                            ),
                            Text("$weight", style: buyukTextStil),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    size: 36,
                                  ),
                                  backgroundColor: Color(0xff212747),
                                  elevation: 0.0,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 36,
                                  ),
                                  backgroundColor: Color(0xff212747),
                                  elevation: 0.0,
                                  tooltip: "Kilonuzu arttırın.",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        decoration: genelBoxDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "AGE",
                              style: genelTextStil,
                            ),
                            Text(
                              "$age",
                              style: buyukTextStil,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    size: 36,
                                  ),
                                  backgroundColor: Color(0xff212747),
                                  elevation: 0.0,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 36,
                                  ),
                                  backgroundColor: Color(0xff212747),
                                  elevation: 0.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 500,
                height: 60,
                child: FlatButton(
                  child: Text(
                    "CALCULATE YOUR BMI",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  color: Color(0xfffe0167),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
