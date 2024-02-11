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
          body: Column(
            children: [
              Center(
                child: Container(
                  child:
                      const Text("I ❤ Flutter, this is written in a container"),
                  margin: EdgeInsets.all(100),
                  color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                // Karena pakai kolom, makanya dia kebawah, main axis = ke bawah
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.abc),
                    Icon(Icons.ac_unit)
                  ],
                ),
              ),
              Container(
                // Karena pakai row, makanya dia samping, main axis = ke samping
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.abc),
                    Icon(Icons.ac_unit)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
