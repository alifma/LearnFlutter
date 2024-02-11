import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url =
        "https://lh3.googleusercontent.com/d/1dnNZAyGZ0xJxyV1s1ODF93K0dy-EV4VY";

    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Home Page"),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Home Page",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              IconButton(
                icon: Hero(
                  tag: url,
                  child: Image.network(
                    url,
                    width: 64,
                    height: 64,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DetailsPage(url: url)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String url;

  const DetailsPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Details Page"),
        backgroundColor: Colors.cyan.shade300,
      ),
      body: Center(
        child: Hero(
          tag: url,
          child: Image.network(
            url,
            width: 128,
            height: 128,
          ),
        ),
      ),
    );
  }
}
