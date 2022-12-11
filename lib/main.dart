import 'package:ctms/auth_service.dart';
import 'package:ctms/pages/citizen_home_page.dart';
import 'package:ctms/pages/login_page.dart';
import 'package:ctms/utils/routes.dart';
import 'package:ctms/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'core/store.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Be The Change",
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuthState(),
      theme: MyTheme.lightTheme(context),
      routes: {
        MyRoutes.LoginPage: (context) => const LoginPage(),
        MyRoutes.CitizenHomePage: (context) => const CitizenHomePage()
      },
    );
  }
}
