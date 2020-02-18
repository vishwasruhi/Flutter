import 'package:flutter/material.dart';
import 'screens/note_list.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Todo App',
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.purple,
     ), 
     home:NoteList(),
    );
  }
}