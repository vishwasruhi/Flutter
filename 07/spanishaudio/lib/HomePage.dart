import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget
{
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  AudioCache audioPlayer = AudioCache();

  List<NumberAudio> numberList=[
    NumberAudio("one.wav",Colors.red,"One"),
    NumberAudio("two.wav",Colors.blue,"Two"),
    NumberAudio("three.wav",Colors.green,"Three"),
    NumberAudio("four.wav",Colors.pink,"Four"),
    NumberAudio("five.wav",Colors.brown,"Five"),
    NumberAudio("six.wav",Colors.blueGrey,"Six"),
    NumberAudio("seven.wav",Colors.teal,"Seven"),
    NumberAudio("eight.wav",Colors.grey,"Eight"),
    NumberAudio("nine.wav",Colors.orange,"Nine"),
    NumberAudio("ten.wav",Colors.purple,"Ten"),
  ];

  play(String uri)
  {
    audioPlayer.play(uri);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("images/logo1.png"),
              height: 150.0,
              width: 150.0,
               
              
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  childAspectRatio: 2.0,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  ),
                  itemCount: numberList.length,
                  itemBuilder: (context,i)=>SizedBox(
                    width: 100.0,
                    height: 50.0,
                    child: RaisedButton(
                      color: numberList[i].buttonColor,
                      child: Text(
                        numberList[i].buttonText,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){
                        play(numberList[i].audioUri);
                      },
                    ),
                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(75.0),
              child: Text("A Project By Vishwas",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              )
            )
          ],
          ),
        ),
      ),
    );
  }
}