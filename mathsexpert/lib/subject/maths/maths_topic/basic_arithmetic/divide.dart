import 'package:flutter/material.dart';

class Divide extends StatefulWidget {
  @override
  _DivideState createState() => _DivideState();
}

class _DivideState extends State<Divide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[600],
        title: const Text('Division',
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
    );
  }
}
