import 'package:flutter/material.dart';
import 'package:webapp/navBar/navBar.dart';
import 'package:webapp/landingPage/landinPage.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  colors: [
                    Color.fromRGBO(125, 50, 24, 0.5),
                    Color.fromRGBO(100, 210, 120, 0.1)
                  ],
                  end: Alignment.centerRight)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Navbar(),
                LandingPage(),
              ])),
    );
  }
}
