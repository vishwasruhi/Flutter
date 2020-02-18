import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SignUpPage.dart';
import 'SignInPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Firebase Login",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String,WidgetBuilder>{
        "/SignInPage":(BuildContext context)=> SignInPage(),
        "/SignUpPage":(BuildContext context)=> SignUpPage(),
      },
    );
  }
}