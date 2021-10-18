import 'package:flutter/material.dart';
import 'package:firebaseflutter/services/auth.dart';

class Home extends StatelessWidget {
  final AuthServices _auth = AuthServices();
  //const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        elevation: 0.0,
        backgroundColor: Colors.brown[400],
        actions: <Widget>[
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Colors.brown[400]),
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'))
        ],
      ),
    );
  }
}
