import 'package:ctms/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 244, 240),
        title: "Login"
            .text
            .textStyle(TextStyle(color: MyTheme.darkBlue))
            .make()
            .centered(),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/scan_hero.jpg").wPCT(
                context: context,
                widthPCT: context.isMobile ? context.screenWidth - 10 : 20),
            Button(context,
                    imgPath: "assets/images/google.png",
                    text: "Continue with Google")
                .p12(),
            Button(context,
                    imgPath: "assets/images/google.png",
                    text: "Sign Up with Email")
                .p12(),
          ],
        ),
      ),
    );
  }

  Widget Button(BuildContext context, {String? imgPath, String? text}) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255))),
      child: ListTile(
        leading: Image.asset(imgPath!).w10(context),
        title: text!.text.makeCentered(),
      ),
    ).wh(300, 50);
  }
}
