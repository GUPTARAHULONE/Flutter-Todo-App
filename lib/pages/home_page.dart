import 'package:flutter/material.dart';

import '../utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of todo
  List todoList = [
    ["Buy Groceries", false],
    ["Go to Gym", false],
    ["Learn Flutter", false]
  ];

  void checkboxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
          backgroundColor: Colors.yellow[400],
          title: const Text('TO DO'),
          elevation: 0),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (value) => checkboxChanged(value, index),
            );
          },
          itemCount: todoList.length),
    );
  }
}
