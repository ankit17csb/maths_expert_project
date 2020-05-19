import 'package:flutter/material.dart';
import 'package:mathsexpert/subject/maths/maths_topic/area/circle.dart';
/*
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/add.dart';
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/divide.dart';
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/subtract.dart';


 */

class Area extends StatefulWidget {
  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[600],
        title: const Text('Area',
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
                title: Text('Circle'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Circle()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Rectangle'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Circle()),
                  );
                },
              ),
            ),
            /*
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Multiply'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Multiply()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Divide'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Divide()),
                  );
                },
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}
