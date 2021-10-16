import 'package:firebaseflutter/pages/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: SignIn());
  }
}
