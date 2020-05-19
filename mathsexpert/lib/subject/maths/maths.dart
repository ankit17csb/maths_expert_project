import 'package:flutter/material.dart';
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/basic_arithmetic.dart';
import 'package:mathsexpert/subject/maths/maths_topic/area/area.dart';

class Maths extends StatefulWidget {
  @override
  _MathsState createState() => _MathsState();
}

class _MathsState extends State<Maths> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: const Text('Maths',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: const Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: null,
            )
          ],
        ),
        body: Container(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Basic arithmetic'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BasicArithmetic()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Area calculation'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Area()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Volume/Surface calculation'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Angle'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Fractional arithmetic'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Percentage calculation'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Rule of three'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Intercept theorem'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Trigonometry'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Equation'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Curve discussion'),
                ),
              ),
            ],
          ),
        ));
  }
}
