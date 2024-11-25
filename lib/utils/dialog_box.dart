import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todo_flutter_application/utils/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Add a new task',
                  )),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                MyButtons(text: "Save", onPressed: onSave),
                Spacer(),
                MyButtons(text: "Cancel", onPressed: onCancel),
              ])
            ],
          )),
    );
  }
}
