import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              // curve the corners a bit
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(25),
            child: Text(
              "Hello World",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
