import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final int days = 30;
  final String name = "Om Bhatt";

  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child:  Container(
          child: Text("Welcome $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}