import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main()
{
  runApp(MaterialApp(
    home: MyButton(),
  )
  );
}


class MyButton extends StatefulWidget
{
 @override
 MyButtonState createState()
 {
   return MyButtonState();
 }
}


class MyButtonState extends State<MyButton>
{
  int counter=0;
  List<String> numbers=[
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];
  String defaultText="Spanish Numbers";
void displaySNumbers()
{
  setState(() {
defaultText= numbers[counter];
if(counter < 10)
{
  counter=counter+1;
}
else{
  counter=0;
}
  });
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
      title: Text('Spanish Number'),
    ),
    body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(defaultText,style: TextStyle(fontSize: 30.0)),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              child: Text('Call Spanish Numbers',style: TextStyle(
                color:Colors.white;
              ),
              ),
              onPressed: displaySNumbers,
              color:Colors.orange;
            )


          ],
        )
      ),
    ),
  );
}
}




}