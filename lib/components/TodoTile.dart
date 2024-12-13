import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  //constructor
  const TodoTile({
    super.key,
    required this.taskName,
    required this.isTaskcompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  final String taskName;
  final bool isTaskcompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext) deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(10),
            )
          ],
        ),
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
      ),
    );
  }
}
