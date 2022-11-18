import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child:  Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}