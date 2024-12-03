import 'package:flutter/material.dart';
import 'package:todo_list/components/DialogBox.dart';
import 'package:todo_list/components/TodoTile.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    ["task n°1", false],
    ["task n°2", false]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          title: const Text(
            "TO DO",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.amber,
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: todoList[index][0],
              isTaskcompleted: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Action à effectuer lors de l'appui sur le bouton
            DialogBox();
          },
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
