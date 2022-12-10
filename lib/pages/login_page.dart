// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_divider/text_divider.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:ctms/utils/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? username = "example@gmail.com";
    String? password = "password";
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/scan_hero.jpg").w(300).centered(),
              "Login"
                  .text
                  .textStyle(TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 37, 36, 36)))
                  .make()
                  .pOnly(left: 30),
              InputDecoratorExample(
                      placeholder: username, icon: Icons.person, isPassword: 0)
                  .pOnly(right: 30, left: 30, top: 20),
              InputDecoratorExample(
                      placeholder: password, icon: Icons.lock, isPassword: 1)
                  .pOnly(right: 30, left: 30, top: 20),
              InkWell(
                onTap: () {},
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: "Forget Password?"
                      .text
                      .textStyle(TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 3, 78, 128)))
                      .make()
                      .pOnly(top: 12, right: 30),
                ),
              ),
              Button(context, text: "Login", withGoogle: 0).centered(),
              TextDivider.horizontal(
                text: Text(
                  "OR",
                  style: context.captionStyle,
                ),
                color: Colors.black45,
                thickness: 0.7,
              ).pOnly(top: 12),
              Button(context, text: "Login in with Google", withGoogle: 1)
                  .centered(),
            ],
          ),
        ),
      ),
    );
  }

  Widget Button(BuildContext context, {String? text, int? withGoogle}) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          backgroundColor: MaterialStateProperty.all(withGoogle == 0
              ? Color.fromRGBO(5, 123, 202, 1)
              : Color.fromARGB(255, 206, 208, 209))),
      child: text!.text
          .textStyle(TextStyle(
              fontSize: 16,
              color: withGoogle == 1 ? Colors.black87 : Colors.white))
          .makeCentered(),
    ).wh(332.7, 50).pOnly(top: 12);
  }
}

class InputDecoratorExample extends StatelessWidget {
  const InputDecoratorExample({
    Key? key,
    required this.placeholder,
    required this.icon,
    required this.isPassword,
  }) : super(key: key);
  final String? placeholder;
  final IconData? icon;
  final int isPassword;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword == 1 ? true : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: placeholder,
        prefixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Icon(
            icon,
          ),
        ),
        suffixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: isPassword == 1
              ? IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye))
              : null,
        ),
      ),
    );
  }
}
