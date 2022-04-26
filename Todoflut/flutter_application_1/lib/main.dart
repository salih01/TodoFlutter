import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        scaffoldBackgroundColor: Color.fromARGB(223, 47, 0, 142),
      ),
      home: TodoList(),// başlangıç ekranımızı todolist sınıfını belirttik

    );
  }
}


