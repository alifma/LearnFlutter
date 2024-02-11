import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// The main flutter function thaa will be executed
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter is Fun"),
          backgroundColor: Colors.yellow,
        ),
        body: ListView.builder(itemBuilder: (_, index) {
          return Container(color: randomColor(), width: 500, height: 500);
        }),
        // Kalau di scaffold bisa tambahin FAB
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.flag), label: "FLag"),
          ],
        ),
        drawer: Drawer(child: Text("Yowasap")),
        // Center is like A container but it sis specified for centering things
      ),
    );
  }

  Color randomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
      1.0, // Opacity (1.0 for fully opaque)
    );
  }
}
