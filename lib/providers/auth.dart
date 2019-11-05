import 'package:flutter/foundation.dart';

import 'package:firebase_auth/firebase_auth.dart';

class Auth with ChangeNotifier {
  final auth = FirebaseAuth.instance;

   String _token;

   bool get isAuth {
     return _token != null;
   }

  Future<FirebaseUser> signIn(String email, String pwd) async {
    final user = (await auth.signInWithEmailAndPassword(email: email, password: pwd)).user;
    _token =  (await user.getIdToken()).toString();
    notifyListeners();
    return user;
  }
  

}