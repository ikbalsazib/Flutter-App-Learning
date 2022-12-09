import 'package:flutter/material.dart';

import '../widgets/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int count = 50;
    var title = "jashhad";
    const pi = 3.14;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
        body: const Center(
          child: Text("Welcome to 100"),
        ),
      drawer: const AppDrawer(),
    );
  }
}
