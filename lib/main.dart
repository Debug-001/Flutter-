import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/login.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
    //Theme.dark overrides the colors property

      // Dark Mode declaration
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //  brightness:  Brightness.dark,
      // ),



      //routes and initial routes, homepage calling method
      // map has a key(name)
      initialRoute: "/login",
      routes: {
        "/home": ((context) => Home()),
        "/login": ((context) => Login())

      },


    );

  }

  bringVegetables({required bool thaila, int rupees = 100}) {
    
  }
}