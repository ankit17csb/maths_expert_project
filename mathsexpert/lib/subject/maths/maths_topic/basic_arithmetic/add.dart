import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  void dispose() {
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  //final _formKey = GlobalKey<FormState>();
  dynamic a, b;
  dynamic result = '';

  dynamic add(dynamic a, dynamic b) {
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[600],
        title: const Text('Add',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: null,
          )
        ],
      ),
      body: Card(
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //padding : Padding()
                children: <Widget>[
                  Text('c = a + b ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      )),
                ],
              ),
              SizedBox(height: 15),
              Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(' a : ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      )),
                  Container(
                    height: 40,
                    width: 130,
                    //constraints: const BoxConstraints(
                    // maxWidth: 500
                    //    ),
                    // margin: const EdgeInsets.symmetric(
                    //   horizontal: 20, vertical: 10),
                    child: CupertinoTextField(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey[600],
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      controller: myController1,
                      //clearButtonMode: OverlayVisibilityMode.editing,
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      placeholder: 'Enter a',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(' b : ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      )),
                  Container(
                    height: 40,
                    width: 130,

                    //margin: const EdgeInsets.symmetric(
                    //   horizontal: 20, vertical: 10),
                    child: CupertinoTextField(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey[600],
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      controller: myController2,
                      //clearButtonMode: OverlayVisibilityMode.editing,
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      placeholder: 'Enter b',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // margin: const EdgeInsets.symmetric(
                    //   horizontal: 40, vertical: 40),
                    //constraints: const BoxConstraints(maxWidth: 500),
                    width: 100,
                    child: RaisedButton(
                      child: Text(
                        'Add',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        if (myController1.text.isNotEmpty &&
                            myController2.text.isNotEmpty) {
                          a = myController1.text;
                          b = myController2.text;
                          result = add(a, b);
                          setState(() {
                            result = add(a, b);
                          });
                        } else {}
                      },
                      color: Colors.lightGreen[300],
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(' c : ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      )),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey[600],
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    padding: const EdgeInsets.fromLTRB(16, 9, 0, 0),
                    child: Text('$result ',
                        style: TextStyle(
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
