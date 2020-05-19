import 'package:flutter/material.dart';

class Subtract extends StatefulWidget {
  @override
  _SubtractState createState() => _SubtractState();
}

class _SubtractState extends State<Subtract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[600],
        title: const Text('Subtraction',
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
