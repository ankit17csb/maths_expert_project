import 'package:flutter/material.dart';
import 'package:mathsexpert/subject/maths/maths.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> subjectList = [
    'Maths',
    'Physics',
    'Chemistry',
    'Maths',
    'Physics',
    'Chemistry'
  ];

  List<String> subjectImage = [
    'assets/img/m_logo.jpeg',
    'assets/img/m_logo.jpeg',
    'assets/img/m_logo.jpeg',
    'assets/img/m_logo.jpeg',
    'assets/img/m_logo.jpeg',
    'assets/img/m_logo.jpeg',
  ];

  Widget cardsWidget(itemIndex) => Container(
        margin: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          color: Colors.white,
        ),
        child: GestureDetector(
          onTap: () {
            if (itemIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Maths()),
              );
            } else if (itemIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Maths()),
              );
            } else if (itemIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Maths()),
              );
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: AssetImage(subjectImage[itemIndex]),
                  radius: 30,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  subjectList[itemIndex],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: const Text('Study Expert',
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
        body: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/img/maths.jpg'),
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.6,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.deepOrangeAccent,
                    //color: Colors.white
                  ),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      controller: scrollController,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return cardsWidget(index);
                      }),
                );
              },
            ),
          ],
        ));
  }
}
