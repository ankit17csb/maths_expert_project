import 'package:flutter/material.dart';

class Multiply extends StatefulWidget {
  @override
  _MultiplyState createState() => _MultiplyState();
}

class _MultiplyState extends State<Multiply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[600],
        title: const Text('Multiplication',
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
