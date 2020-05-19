import 'package:flutter/material.dart';
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/multiply.dart';
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/add.dart';
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/divide.dart';
import 'package:mathsexpert/subject/maths/maths_topic/basic_arithmetic/subtract.dart';

class BasicArithmetic extends StatefulWidget {
  @override
  _BasicArithmeticState createState() => _BasicArithmeticState();
}

class _BasicArithmeticState extends State<BasicArithmetic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                title: Text('Add'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Add()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Subtract'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Subtract()),
                  );
                },
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
