import 'package:ctms/auth_service.dart';
import "package:flutter/material.dart";
import 'package:velocity_x/velocity_x.dart';
import "package:firebase_auth/firebase_auth.dart";

class CitizenHomePage extends StatelessWidget {
  const CitizenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    User? user;
    user = FirebaseAuth.instance.currentUser;

    return Scaffold(
        body: Material(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Welcome${user!.displayName}"),
        ElevatedButton.icon(
            onPressed: () async {
              await AuthService().signOut();
            },
            icon: Icon(Icons.logout),
            label: "log out".text.make())
      ],
    ).wPCT(context: context, widthPCT: 100)));
  }
}
