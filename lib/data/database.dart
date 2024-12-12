import 'package:hive_flutter/hive_flutter.dart';

class toDoDataBase {
  List toDoList = [];

  // reference to the hive box
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["aller à la salle", false],
      ["faire les course", false]
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update data from Database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
