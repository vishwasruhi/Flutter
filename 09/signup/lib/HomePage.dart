import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  final String name,email,mobile,collegename,password;
  HomePage(
    {
      Key key,
      @required
      this.name,
      this.email,
      this.mobile,
      this.collegename,
      this.password,
    }
  ):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Form Data"),
      ),
      body: SingleChildScrollView(
              child: Form(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Column(
              children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(52.0),
                  ),
                  Image(
                    image: AssetImage("images/logo.png"),
                    width:100.0,
                    height:100.0
                  ),
                    Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text(name),
                  ),
                   ListTile(
                    leading: Icon(Icons.email),
                    title: Text(email),
                  ),
                   ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(mobile),
                  ),
                   ListTile(
                    leading: Icon(Icons.school),
                    title: Text(collegename),
                  ),
                 
                  Padding(
                    padding: EdgeInsets.all(100.0),
                  ),
                   Container(
                  padding: EdgeInsets.all(20.0),
                  color:Colors.black,
                  child: Text("A Project By Vishwas",
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ),
                 
                  
              ],
            ),
            
          ),
          
        ),
        
      ),
      
    );
  }
}
