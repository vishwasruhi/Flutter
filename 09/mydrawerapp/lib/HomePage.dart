import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Vishwas"),
              accountEmail: Text("vishwas.ruhi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,  
              child: Text("VR"),
              
              ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text("category"),
              trailing: Icon(Icons.card_travel),
              onTap: () => Navigator.of(context).pushNamed("/a"),
            ),
            ListTile(
              title: Text("Profile"),
              trailing: Icon(Icons.more),
            ),
            Divider(),
            ListTile(
              title:Text("Mascot"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("HomePage"),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cloud_circle),
        onPressed: (){},
      ),
    );
  }
}