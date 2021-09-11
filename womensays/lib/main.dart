import 'package:flutter/material.dart';
import 'quotes.dart ';

void main() => runApp(MaterialApp(home: BooksList()));

class BooksList extends StatefulWidget {
  //const BooksList({Key? key}) : super(key: key);

  @override
  _BooksListState createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  List<String> citations = [
    'Pensez que vous pouvez ou pas , dans les deux cas vous avez raison',
    'Tout ce que vous voulez que les hommes fassent pour vous , faites le de meme pour eux',
    'Le temps passe dan l\'eau ne transforme pas un tronc d\'arbre en crocodile'
  ];
  //building a function for the card
  Widget quoteStyler() {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: Column(children: <Widget>[
        Text('', style: TextStyle(color: Colors.black, fontSize: 12.0)),
        SizedBox(
          height: 6.0,
          width: 5.0,
        ),
        Text('',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 10.0,
                fontWeight: FontWeight.bold))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text('Book List',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300)),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: citations.map((c) {
                return Text(c);
              }).toList(),
            )));
  }
}
