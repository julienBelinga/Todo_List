import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  @override
  _DialogBoxState createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {

  void AddTask(){}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add a task"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: Text("write your task"),
          ),
        ],
      ),
      actions: <Widget[
        TextButton(onPressed: AddTask(), child: const Text("Add")),
        TextButton(onPressed: () {Navigator.of(context).pop();}, child: const Text("cancel")),
      ],
    );
  }
}
