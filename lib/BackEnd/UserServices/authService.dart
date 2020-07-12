import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../Models/user.dart';

enum CredentialType {
  Google,
  Facebook,
  Apple,
}

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();

  User _userFromFirebaseUser(FirebaseUser firebaseUser) {
    return firebaseUser == null ? null : User(uid: firebaseUser.uid);
  }

  Stream<User> get user {
    return _firebaseAuth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future signInWithCredential({
    @required AuthCredential credential,
    @required CredentialType credentialType,
    String name,
    DateTime dateOfBirth,
  }) async {
    try {
      final user = (await _firebaseAuth.signInWithCredential(credential)).user;
      print("Firebase Sign In Done");

      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      if (error.toString().toLowerCase().contains("invalid_credential")) {
        throw "Error: Invalid Credentials";
      } else if (error.toString().toLowerCase().contains("user_disabled")) {
        throw "Error: User has been Disabled";
      } else {
        throw "Error: Unknown Error. Check your Connection";
      }
    }
  }

  // Sign In with Google Account
  Future signInWithGoogle() async {
    try {
      print("Initiating Google SignIn.......");
      final GoogleSignInAccount _googleSignInAccount =
          await _googleSignIn.signIn();
      print("Google SignIn Done");

      final GoogleSignInAuthentication authentication =
          await _googleSignInAccount.authentication;
      print("Google SignIn Authentciation Done");

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );
      print("Auth Credential Created");

      return await AuthService().signInWithCredential(
        credential: credential,
        credentialType: CredentialType.Google,
        dateOfBirth: DateTime(2000),
        name: _googleSignInAccount.displayName,
      );
    } catch (error) {
      print(error);
    }
  }
}
