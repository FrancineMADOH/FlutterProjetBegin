import 'package:flutter/material.dart';
import './pages/quotes.dart';
import './pages/loading.dart';

void main() => runApp(MaterialApp(home: Home(),
        //setting the routes
        routes: {
          //'/': (context) => Home(),
          '/loading': (context) => loading(),
          '/Women Says': (context) => quotes()
        }));

class Home extends StatefulWidget {
  //Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Container(
            padding: EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(' WOMEN SAYS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 70.0,
                        fontFamily: 'RobotoMono')),
                SizedBox(
                  height: 8.0,
                  width: 3.0,
                ),
                DecoratedBox(
                    child: Image(
                      height: 200,
                      width: 200,
                      fit: BoxFit.fill,
                      image: AssetImage('assets/women.jpg'),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 1.0))),
                SizedBox(
                  height: 5.0,
                  width: 3.0,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.brown),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Women Says');
                    },
                    child: Text('View all quotes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500)))
              ],
            )));
  }
}
