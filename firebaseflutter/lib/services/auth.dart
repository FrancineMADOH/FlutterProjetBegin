import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseflutter/models/user_model.dart';

//define the method to interact with our firebase app

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a  user  object based on firebaseuser

  User _userFromFirebase(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }
  //auth changes user streams

  Stream<User> get user {
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) => _userFromFirebase(user));
        .map(_userFromFirebase);
  }

  //sigin in uers anonymously
  Future signInAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password
  //sign up with email and password
  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
