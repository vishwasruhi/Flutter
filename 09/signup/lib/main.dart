import 'package:flutter/material.dart';
import 'SignUp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Sign Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SignUp(),
    ) ;
  }
}