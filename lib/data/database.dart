import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List todoList = [];
  final _myBox = Hive.box('myBox');

  void createInitData() {
    todoList = [
      ['Make tutorial', true],
      ['Do Exercise', false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void saveData() {
    _myBox.put('TODOLIST', todoList);
  }
}
