import 'package:flutter/material.dart';
import './pages/quotesPage.dart';
import './pages/loadingPage.dart';

void main() => runApp(MaterialApp(home: Home(),
        //setting the routes
        routes: {
          '/': (context) => Home(),
          '/loading': (context) => loadingPage(),
          '/Women Says': (context) => quotesPage()
        }));

class Home extends StatefulWidget {
  //Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
