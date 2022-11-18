import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home.dart';
import 'package:flutter_application_2/pages/login.dart';
import 'package:flutter_application_2/themes.dart';
import 'package:flutter_application_2/utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
  // runApp(const MyApp());
}

//stateless widget is a class

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({super.key});

//overriding the methods

  @override
//widget is made like a tree, build context tells where the material app is located, its position
  //function always has first character small : ('b'uild)
  Widget build(BuildContext context) {
    // bringVegetables(thaila: true); //methods

    return MaterialApp(
      // home page calling method
      // home: Home(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      //Theme.dark overrides the colors property

      // Dark Mode declaration
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //  brightness:  Brightness.dark,
      // ),

      //routes and initial routes, homepage calling method
      // map has a key(name)
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": ((context) => const Login()),
        MyRoutes.homeRoute: ((context) => const Home()),
        MyRoutes.loginRoute: ((context) => const Login())
      },
    );
  }

  bringVegetables({required bool thaila, int rupees = 100}) {}
}
