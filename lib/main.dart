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
        // Center is like A container but it sis specified for centering things
        body: Center(
          // Container is like A Div on HTML, its just wrap a things
          child: Container(
            child: const Text("I ❤ Flutter, this is written in a container"),
            margin: EdgeInsets.all(100),
            color: Colors.blue,
            padding: EdgeInsets.all(10),
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
