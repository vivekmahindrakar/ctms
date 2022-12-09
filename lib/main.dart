import 'package:ctms/pages/login_page.dart';
import 'package:ctms/utils/routes.dart';
import 'package:ctms/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

void main(List<String> args) {
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
      //home: HomePage(),
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.LoginPage,
      routes: {
        MyRoutes.LoginPage: (context) => const LoginPage(),
      },
    );
  }
}
