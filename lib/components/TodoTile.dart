import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  //constructor
  const TodoTile(
      {super.key,
      required this.taskName,
      required this.isTaskcompleted,
      required this.onChanged});

  final String taskName;
  final bool isTaskcompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Checkbox(
              value: isTaskcompleted,
              onChanged: onChanged,
              activeColor: Colors.amber,
            ),
            Text(
              taskName,
              style: TextStyle(
                decoration: isTaskcompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.yellow[200],
        ),
      ),
    );
  }
}
