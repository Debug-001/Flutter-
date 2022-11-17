import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Dholakpur";
    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child:  Container(
            child: const Text("Welcome  $days days Flutter app $name name",style: TextStyle(
        // fontSize: 20,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      ),
      ),
      ),
        drawer:  const Drawer(),
    );
  }
}