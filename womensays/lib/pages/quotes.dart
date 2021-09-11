import 'package:flutter/material.dart';

class quotes extends StatefulWidget {
  //quotes({Key? key}) : super(key: key);

  @override
  _quotesState createState() => _quotesState();
}

class _quotesState extends State<quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.brown,
            centerTitle: true,
            title: Text('All Quotes'),
            elevation: 0),
        body: ListView.builder(itemBuilder: (context, index) {
          return Card(
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('quotes'),
                  SizedBox(height: 5.0, width: 5.0),
                  Text('author',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ))
                ],
              ));
        }));
  }
}
