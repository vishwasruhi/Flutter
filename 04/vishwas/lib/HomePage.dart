
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget
{
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>
{

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage oone = AssetImage("images/one.png");
  AssetImage ttwo = AssetImage("images/two.png");
  AssetImage tthree = AssetImage("images/three.png");
  AssetImage ffour = AssetImage("images/four.png");
  AssetImage ffive = AssetImage("images/five.png");
  AssetImage ssix = AssetImage("images/six.png");

  

  AssetImage diceimage;

  AssetImage ddiceimage;

  @override
  void initState()
  {
    super.initState();
    setState(() {
      diceimage=one;
      ddiceimage=ffive;
    });
  }

  void rollDice()
  {
    int random=(1+Random().nextInt(6));
    int rrandom=(1+Random().nextInt(6));
    AssetImage newImage;
    AssetImage nnewImage;

    switch (random) {
      case 1:
        newImage=one;
        break;
        case 2:
        newImage=two;
        break;
        case 3:
        newImage=three;
        break;
        case 4:
        newImage=four;
        break;
        case 5:
        newImage=five;
        break;
        case 6:
        newImage=six;
        break;
  
    }
    
    switch (rrandom) {
      case 1:
        nnewImage=oone;
        break;
        case 2:
        nnewImage=ttwo;
        break;
        case 3:
        nnewImage=tthree;
        break;
        case 4:
        nnewImage=ffour;
        break;
        case 5:
        nnewImage=ffive;
        break;
        case 6:
        nnewImage=ssix;
        break;
  
    }

    setState(() {
      diceimage=newImage;
      ddiceimage=nnewImage;
    });


  }





  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
            Image(
              image: diceimage,
              width: 200.0,
              height: 200.0,

            ),
           Container(
             margin: EdgeInsets.all(20.0),
           ),
            Image(
              image: diceimage,
              width: 200.0,
              height: 200.0,

            ),
            Container(
              margin: EdgeInsets.only(top:100.0),
              child: RaisedButton(
                color: Colors.blue,
                padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                
                child: Text("Roll The Dice"),
                onPressed: rollDice,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Container(
              padding:EdgeInsets.all(10.0),
              child:Text("A Project By Vishwas",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,

              ),
              )
            ),

            ],
            
          ),
        ),
      ),

    );
  }
}