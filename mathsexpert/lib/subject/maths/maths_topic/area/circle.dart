import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  final TextStyle textstyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  final InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(),
  );

  final myController1 = TextEditingController();

  @override
  void dispose() {
    myController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: Text('Circle', style: textstyle),
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
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomPaint(
                    painter: ShapesPainter(),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 400,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: decoration,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    color: Colors.red,
                    minWidth: 160,
                    child: Text(
                      'Google',
                      style: textstyle,
                    ),
                  ),
                  MaterialButton(
                    color: Colors.red,
                    minWidth: 160,
                    child: Text(
                      'Google',
                      style: textstyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.yellow[100];
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 3);
    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 120.0, paint);
    // set the paint color to be white

    paint.color = Colors.blue[800];
    var p1 = Offset(size.width / 2, size.height / 3 - 120);
    var p2 = Offset(40, size.height / 3 - 120);
    canvas.drawLine(p1, p2, paint);
    // set the color property of the paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
