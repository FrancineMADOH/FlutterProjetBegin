import 'package:firebaseflutter/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //acces the user in the auth class
  final AuthServices _auth = AuthServices();

  // text field state
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[400],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown[200],
          elevation: 0.0,
          title: Text('Sign-in to your account '),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Form(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text('Sign in to Your account',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() => email = value);
                  print(email);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                onChanged: (value) {
                  setState(() => password = value);
                  print(password);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () async {
                    print('user has sign in');
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.brown[400]),
                  child: Text('Sign in', style: TextStyle(color: Colors.white)))
            ],
          )),
          // child: ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //       primary: Colors.white, padding: const EdgeInsets.all(5.0)),
          //   child: Text(
          //     'Sign in Anonymously',
          //     style: TextStyle(color: Colors.black),
          //   ),
          //   onPressed: () async {
          //     dynamic result = await _auth.signInAnonymous();
          //     if (result == null) {
          //       print('there was an error signin in');
          //     } else {
          //       print('sign in sucessfull');
          //       return result.uid;
          //     }
          //   },
          // ),
        ));
  }
}
