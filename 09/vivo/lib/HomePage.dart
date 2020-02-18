import 'package:flutter/material.dart';   
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  
  final String title;
  HomePage({
    
    Key key,
    @required
    this.title,
  }):super(key: key);
}

class _HomePageState extends State<HomePage> {
  List data;
  final String url="https://api.github.com/users";

  @override
  void initState()
  {
    super.initState();
    this.getjsondata();
  }
  Future<String> getjsondata() async
  {
    var response = await http.get(
      Uri.encodeFull(url)
    );

    setState(() {
      var convert= json.decode(
       response.body 
      );
      data=convert;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Random User"),
      ),
      body: ListView.builder(
        itemCount:data.length,
        itemBuilder: (BuildContext context,int index)
        {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(data[index]['login'],
                  style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  subtitle: Text(data[index]['url'],
                  style:TextStyle(fontSize: 10.0),
                  ),
                ),
                
               
              ],
            ),
          );
        },
      ),
       
    );
  }
}