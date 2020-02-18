import 'package:flutter/material.dart';
import 'HomePage.dart';

class SignUp extends StatefulWidget
{
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>
{
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;
  String name,email,mobile,collegename,password;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('SignUp'), 
      ),
      body: SingleChildScrollView(
              child: Form(
          key: _key,
          child:Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12.0),
                ),
                Image(
                  image: AssetImage("images/logo.png"),
                  height: 100.0,
                  width: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input)
                    {
                      if(input.isEmpty)
                      return 'Enter name';
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                    onSaved: (input)=>name=input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (input)
                    {
                      if(input.isEmpty)
                      return 'Enter email';
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    onSaved: (input)=>email=input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input)
                    {
                      if(input.isEmpty)
                      return 'Enter phone number';
                    },
                    decoration: InputDecoration(
                      labelText: 'Phone',
                    ),
                    onSaved: (input)=>mobile=input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator: (input)
                    {
                      if(input.isEmpty)
                      return 'Enter college name';
                    },
                    decoration: InputDecoration(
                      labelText: 'College Name',
                    ),
                    onSaved: (input)=>collegename=input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: TextFormField(
                    validator: (input)
                    {
                      if(input.isEmpty)
                      return 'Enter Password';
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    
                    onSaved: (input)=>password=input,
                    obscureText: true,
                  ),
                ),
                  Padding(
                  padding: EdgeInsets.all(22.0),
                ),
                ButtonTheme(
                  height: 40.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: _sendToNextScreen,
                    color: Colors.redAccent,
                    child: Text('Save',
                    style: TextStyle(
                      color:Colors.white,
                    ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                  Padding(
                  padding: EdgeInsets.all(32.0),
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
  _sendToNextScreen()
  {
     if(_key.currentState.validate())
     {  //saves to gloal key
        _key.currentState.save();
        //send to next screen
        Navigator.push(context,
        MaterialPageRoute(
          builder: (context)=> HomePage(
            name:name,
            mobile:mobile,
            email:email,
            collegename:collegename,
            password:password,
          )
        )
        );
     }
     else
     {
       setState(() {
         _autovalidate=true;
       });
     }
     
  }
}