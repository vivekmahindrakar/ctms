import 'package:ctms/pages/citizen_home_page.dart';
import 'package:ctms/pages/login_page.dart';
import 'package:ctms/pages/police_home_page.dart';
import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            User? user = snapshot.data;
            String? email = user!.email;
            List<String> mainDomain = email!.split('.');
            List<String> domain = mainDomain![0].split('@');

            if (domain[1].length == 3)
              return const PoliceHomePage();
            else
              return const CitizenHomePage();
          } else
            return const LoginPage();
        }));
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  signInWithEmailAndPassword({String? emailAddress, String? password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!, password: password!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
