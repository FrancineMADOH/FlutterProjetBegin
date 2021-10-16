import 'package:flutter/material.dart';
import 'package:firebaseflutter/pages/authentication/authentification.dart';
import 'package:firebaseflutter/pages/home/home.dart';
import 'package:provider/provider.dart';
import 'package:firebaseflutter/models/user_model.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    //ethier return home or authentification widget
    //return Authentication();
    if (user == null) {
      return Authentication();
    } else {
      return Home();
    }
  }
}
