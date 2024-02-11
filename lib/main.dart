import 'package:flutter/material.dart';

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
      ),
    );
  }
}
