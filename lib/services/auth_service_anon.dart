import 'package:firebase_auth/firebase_auth.dart';

class AuthServiceAnon {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? userUid;
  // FirebaseUser user;
  // Login Anonym (Var.1)
  Future signInAnon() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      // user = result.user;
      // userUid = user.uid;
      // print(userUid);
      return userCredential;
    } catch (e) {
      print('Something went wront Anonymous');
      return null;
    }
  }
}
