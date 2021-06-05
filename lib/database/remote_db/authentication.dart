import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthenticationService {
  static FirebaseAuth _auth;

  AuthenticationService() {
    _auth = FirebaseAuth.instance;
  }

  static Future<UserCredential> signUp({
    @required email,
    @required password,
  }) async =>
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
}
