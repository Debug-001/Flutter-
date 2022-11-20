import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/catalog.dart';
import 'package:flutter_application_2/widgets/drawer.dart';

import '../widgets/item_widgets.dart';

class Home extends StatelessWidget {
  final int days = 30;
  final String name = "Om Bhatt";
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Test App",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index]
              );
          },
        ),
      ),
      // ignore: prefer_const_constructors/
      drawer: MyDrawer(),
    );
  }
}
