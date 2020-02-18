import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Category.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Drawer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String,WidgetBuilder>{
        "/a": (BuildContext context) => Category(),
      },
    );
  }
}