import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home.dart';
import 'package:flutter_application_2/pages/login.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:flutter_application_2/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,

      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": ((context) => const Login()),
        MyRoutes.homeRoute: ((context) => const HomePage()),
        MyRoutes.loginRoute: ((context) => const Login())
      },
    );
  }
  bringVegetables({required bool thaila, int rupees = 100}) {}
}
