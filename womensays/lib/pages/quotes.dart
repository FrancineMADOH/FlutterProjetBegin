import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../data/data.dart';

class quotes extends StatefulWidget {
  //quotes({Key? key}) : super(key: key);

  @override
  _quotesState createState() => _quotesState();
}

class _quotesState extends State<quotes> {

  List <Quotes> _quotes = List<Quotes>[];
  //http request to fetch notes
  Future <List<Quotes>> fetchQuotes() async {
    var url =
        'https://github.com/FrancineMADOH/FlutterProjetBegin/blob/develop/womensays/assets/quotes.json';
    var response = await http.get(url);
    var quotes = List<Quotes>[];
    if (response == 200) {
      var quotesJson = json.decode(response.body);
      for(var quoteJson in quotesJson){
        quotes.add(Quotes.fromJson(quoteJson));
      }
    }
    return quotes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.brown,
            centerTitle: true,
            title: Text('All Quotes'),
            elevation: 0),
        body: ListView.builder(
            //itemCount: _Quotes.length,
            itemBuilder: (context, index) {
          return Card(
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(_quotes.quote),
                  SizedBox(height: 5.0, width: 5.0),
                  Text(_quotes.author,
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
