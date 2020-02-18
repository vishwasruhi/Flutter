import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title:'BG CHANGER',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Random Color Background'),
        backgroundColor: Colors.green,  
        brightness: Brightness.dark,
        centerTitle: true,
        
      
      ),
      body: HomePage(),
    ),
  );
}
}


class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>
{
  var colors=[
    //Colors.amber,
    Colors.amberAccent,
    Colors.black87,
    Colors.blueAccent,
    Colors.cyanAccent,
    Colors.deepOrangeAccent,
    Colors.redAccent,
    Colors.purpleAccent,
    //Colors.tealAccent,
    //Colors.transparent,
    Colors.white,

  ];

var currentColor = Colors.white;

setRandomColor()
{
  var rnd = Random().nextInt(colors.length);
  setState(() {
    currentColor = colors[rnd];
  });
}



  @override
  Widget build(BuildContext context) {
  
    return Container(
     color: currentColor,
     child: Center(
       
       child: RaisedButton(
         
         color: Colors.black,
         padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
         child: Text('Change color',style: TextStyle(
           fontSize: 20.0,
         fontWeight: FontWeight.bold,
         backgroundColor: currentColor,
         ),
         ),
         onPressed: setRandomColor,
         shape:RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30.0),
            
         )
       ),
     ), 

    );
  }
}
