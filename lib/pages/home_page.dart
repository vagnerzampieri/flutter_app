import 'package:flutter/material.dart';
import 'package:flutter_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(centerTitle: true, title: Text('TO DO'), elevation: 0),
      body: ListView(
        children: [
          TodoTile(
            taskName: "Make tutorial",
            taskCompleted: true,
            onChanged: (value) {},
          ),
          TodoTile(
            taskName: "Do Exercise",
            taskCompleted: false,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
